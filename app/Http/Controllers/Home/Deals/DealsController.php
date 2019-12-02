<?php

namespace App\Http\Controllers\Home\Deals;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\VendorCategory;
use App\Models\Vendors\DiscountDeal;
use Session;
use Auth;
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
 $discount_deals = DiscountDeal::join('vendor_categories','vendor_categories.id','=','discount_deals.vendor_category_id')
                          ->join('categories','categories.id','=','vendor_categories.category_id')
                          ->join('users','users.id','=','vendor_categories.user_id')
                          ->select('discount_deals.*')
                         
                          ->where(function($t) use($request){
                             $data = $t->first();
                             if($data->deal_life == 1){
                                  $t->where('discount_deals.expiry_date','>=',date('Y-m-d'));
                             }
                             
                             if(!empty($request->categories)){
                                $t->whereIn('categories.id',$request->categories);
                             }

                          })
                         
                          ->orderBy('discount_deals.id','DESC');
    $vv = view('includes.home.deals.list',$this->getSesssionData())
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
         'message' => '',
       ];
   }elseif(Session::has('dealData')){
      $dealdata =Session::get('dealData');
      $arr =[
         'name' => $dealdata['name'],
         'phone' => $dealdata['phone'],
         'email' => $dealdata['email'],
         'event_date' => $dealdata['event_date'],
         'message' => $dealdata['message'],
       ];
   }else{
      $arr =[
         'name' => '',
         'phone' => '',
         'email' => '',
         'event_date' => '',
         'message' => '',
      ];
   }

   return $arr;

}


}
