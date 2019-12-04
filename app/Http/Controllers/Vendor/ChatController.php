<?php

namespace App\Http\Controllers\Vendor;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Category;
use App\VendorCategory;
use App\Models\Vendors\Chat;
use App\Models\Vendors\ChatMessage;
use Auth;
class ChatController extends Controller
{
   


#-------------------------------------------------------------------------------
#------------------- chats -----------------------------------------------------
#-------------------------------------------------------------------------------

	public function index($slug)
	{
		 $business = $this->getData($slug);
    return view('vendors.management.chats.index')
    ->with('business',$business)
    ->with('title','Chat Messages for Deal & Discounts');
	}



#-------------------------------------------------------------------------------
#------------------- chats -----------------------------------------------------
#-------------------------------------------------------------------------------

	public function index2($slug)
	{
		 $business = $this->getData($slug);
		return view('vendors.management.chats.index2')
		->with('business',$business)
		->with('title','Chat Messages for Deal & Discounts');
	}
#-------------------------------------------------------------------------------
#------------------- chats -----------------------------------------------------
#-------------------------------------------------------------------------------


   public function getData($slug)
   {
   	  
      $category = VendorCategory::with('chats')
                           ->where('slug',$slug)
                           ->join('categories','categories.id','=','vendor_categories.category_id')
                           ->select('vendor_categories.*')
                           ->where('vendor_categories.user_id',Auth::user()->id);


      return $category->count() > 0 ? $category->first() : redirect()->route('vendor_dashboard')->with('error_message','Please check your url, Its wrong!');

   	   
   }




public function chatMessages($slug,$id)
{
	    $business = $this->getData($slug);

	    $Chat = Chat::with([
			      	'ChatMessages',
			      	'deals',
			      	'deals.Business',
			      	'deals.Business.profileImage',
			      	'ChatMessages.sender',
			        'ChatMessages.receiver'
			      ])
	              ->where('id',$id)
	              ->where('vendor_id',Auth::user()->id)
	              ->first();

		   return view('vendors.management.chats.chatMessages')
				->with('business',$business)
				->with('chats',$Chat)
				->with('title','Chat Messages for Deal & Discounts');
}


public function sendMessages(Request $request,$id)
{ 
   $Chat = Chat::where('id',$id)->where('vendor_id',Auth::user()->id);
   if($Chat->count() > 0){

            $c = $Chat->first();
            $m = new ChatMessage;
            $m->sender_id = trim(Auth::user()->id);
            $m->receiver_id = trim($c->user_id);
            $m->deal_id = trim($c->deal_id);
            $m->business_id = trim($c->business_id);
            $m->chat_id = trim($c->id);
            $m->message = $request->message;
            $m->sender_status = 1;
            $m->receiver_status = 0;
            $m->save();

        return response()->json(['status' => 1,'message' => $this->getMessage($m)]);    
        
   }
}

#------------------------------------------------------------------------------------
#   sendMesage
#------------------------------------------------------------------------------------



public function getMessage($msg)
{
	$text =' ';
	 

   $text .='<li class="replies">';
   $text .='<img src="'.ProfileImage($msg->sender->profile_image).'" alt="" />';
   $text .='<p>'.$msg->message.'</p>';
   $text .='</li>';

	return $text;
}





public function getMessages(Request $request,$slug,$id)
{

 $business = $this->getData($slug);
  $Chat = Chat::with([
       'ChatMessages'
   ])
   ->where('id',$id)
   ->where('vendor_id',Auth::user()->id)
   ->where('business_id',$business->id)
   ->first();

   $messages = ChatMessage::where('chat_id',$Chat->id)
                          ->where('receiver_id',Auth::user()->id)
                          ->where('receiver_status',0)->count();

   if($request->type == "all"){
        $vv = view('users.chats.messages')->with('chats', $Chat);
        return response()->json(['status' => 1 ,'messages' => $vv->render()]);
    }else{

      if($messages > 0){
        $vv = view('users.chats.messages')->with('chats', $Chat);
        return response()->json(['status' => 1 ,'messages' => $vv->render()]);
      }else{
        return response()->json(['status' => 0]);
      }
         
    }
}



}