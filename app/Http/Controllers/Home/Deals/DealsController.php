<?php

namespace App\Http\Controllers\Home\Deals;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\VendorCategory;
use App\Models\Vendors\DiscountDeal;
use Session;
use Auth;
use App\Models\Vendors\Chat;
use App\Models\Vendors\ChatMessage;
class DealsController extends Controller
{
    


#----------------------------------------------------------------------------
#  index Page ---------------------------------------------------------------
#----------------------------------------------------------------------------



   public function index()
   {

   	  $category = \App\Category::join('vendor_categories','vendor_categories.category_id','=','categories.id')
                               ->select('categories.*')
                               ->where('categories.status',1)
                               ->where('categories.parent',0)
                               ->orderBy('sorting','ASC')
                               ->groupBy('categories.id')
                               ->get();
   	 return view('home.deals.index')
   	 ->with('categories',$category);
   }



#----------------------------------------------------------------------------
#  get deals  ---------------------------------------------------------------
#----------------------------------------------------------------------------




public function getDeals(Request $request)
{
 $discount_deals = DiscountDeal::with('Business.getChatOfLoggedUser')
                          ->join('vendor_categories','vendor_categories.id','=','discount_deals.vendor_category_id')
                          ->join('categories','categories.id','=','vendor_categories.category_id')
                          ->join('users','users.id','=','vendor_categories.user_id')
                          ->select('discount_deals.*')
                         
                          ->where(function($t) use($request) {
                             $data = $t->first();

                             if($data->deal_life == 1) {
                                  $data->whereDate('discount_deals.expiry_date', '>=', date('Y-m-d'));
                             }
                             
                             if(!empty($request->categories)) {
                                $data->whereIn('categories.id', $request->categories);
                             }

                          })
                          ->where('vendor_categories.status',3)
                          ->where('vendor_categories.publish',1)
                         
                          ->orderBy('discount_deals.id','DESC');

     // return $discount_deals->get();

    $vv = view('includes.home.deals.list', $this->getSesssionData())
        ->with('discount_deals',$discount_deals->paginate(20));
   return response()->json([
       'status' => 1,
       'deals' => $vv->render(),
       'dealCount' => $discount_deals->count()
   ]);
}



#----------------------------------------------------------------------------
#  get deals  ---------------------------------------------------------------
#----------------------------------------------------------------------------


public function getSesssionData()
{
  $arr =[];
   if(Auth::check() && Auth::user()->role == "user" && !Session::has('dealData')){
       $arr =[
         'name' => Auth::user()->name,
         'phone' => '',
         'email' => Auth::user()->email,
         'event_date' => '',
         
       ];
   }elseif(Session::has('dealData')){
      $dealdata =Session::get('dealData');
      $arr =[
         'name' => $dealdata['name'],
         'phone' => $dealdata['phone_number'],
         'email' => $dealdata['email'],
         'event_date' => $dealdata['event_date'],
          
       ];
   }else{
      $arr =[
         'name' => '',
         'phone' => '',
         'email' => '',
         'event_date' => '',          
      ];
   }

   return $arr;

}





public function getDealRequest(Request $request)
{

    $v = \Validator::make($request->all(),[
        'deal_id' => 'required',
        'name' => 'required',
        'email' => 'required',
        'phone_number' => 'required',
        'event_date' => 'required|after:yesterday',
        'message' => 'required',
    ]);

    $id = $request->deal_id;

    $deal = DiscountDeal::find($id);
                         


    if($v->fails()){

       return response()->json(['status' => 0,'errors' => $v->errors()]);

    }elseif(empty($deal)){

       return response()->json(['status' => 2,'message' => 'This deal is not valid!']);

    }elseif(!empty($deal) && $deal->deal_life == 1 && $deal->expiry_date < date('Y-m-d')){

       return response()->json(['status' => 3,'message' => 'This deal is Expired!']);

    }elseif(!Auth::check() || Auth::user()->role != "user"){

       return response()->json(['status' => 4,'message' => 'Your are not logged in. please login first.']);

    }else{


         
         $c = $this->sendMessage($request,$deal);
         
        if($c > 0){
          $link = url(route('deal_discount_chats')).'?chat_id='.$c;
          $links = 'Your message has been sent to vendor, soon that will reply you. <a href="'.$link.'">view chat</a>';
          return response()->json(['status' => 1, 'link' => $links]);
        }else{
          return response()->json(['status' => 2, 'message' => 'Something wrong!']);
        }
        

    }
     
      

}


#----------------------------------------------------------------------------------------------
#  Send Message -------------------------------------------------------------------------------
#----------------------------------------------------------------------------------------------



public function sendMessage($request,$deal)
{
          $data = [
             'name' => $request->name,
             'email' => $request->email,
             'phone_number' => $request->phone_number,
             'event_date' => $request->event_date,
          ];
          
          Session::put('dealData',$data);
          #################################################



          $text ='Hello '.$deal->vendor->first_name.'<br>';
          $text .=  $request->message.'<br>';
          $text .='By '.$request->name.', Email: '.$request->email .', Phone Number : '.$request->phone_number .'<br>';
          


          #################################################
          
          $chats = Chat::where('user_id',Auth::user()->id)
                      // ->where('deal_id',$deal->id)
                       ->where('vendor_id',$deal->user_id)
                       ->where('business_id',$deal->vendor_category_id);

          if($chats->count() > 0){
                $chat = $chats->first();
                $chat->updated_at =\Carbon\Carbon::now();
                $chat->save();
                $m = new ChatMessage;
                $m->sender_id = trim(Auth::user()->id);
                $m->receiver_id = trim($deal->user_id);
                $m->deal_id = trim($deal->id);
                $m->business_id = trim($deal->vendor_category_id);
                $m->chat_id = trim($chat->id);
                $m->message = $text;
                $m->sender_status = 0;
                $m->receiver_status = 0;
                $m->save();
                 return $chat->id;
          }else{
          
                $chat = new Chat;
                $chat->user_id = Auth::user()->id;
                $chat->business_id = $deal->vendor_category_id;
                $chat->deal_id = $deal->id;
                $chat->vendor_id =trim($deal->user_id);
                $chat->updated_at =\Carbon\Carbon::now();
                $chat->status = 0;
                if($chat->save()){
                      $m = new ChatMessage;
                      $m->sender_id = trim(Auth::user()->id);
                      $m->receiver_id = trim($deal->user_id);
                      $m->deal_id = trim($deal->id);
                      $m->business_id = trim($deal->vendor_category_id);
                      $m->chat_id = trim($chat->id);
                      $m->message = $text;
                      $m->sender_status = 0;
                      $m->receiver_status = 0;
                      $m->save();
                  return $chat->id;

                }

        }
   

}




public function detail()
{
    return view('home.deals.detail');
}



}
