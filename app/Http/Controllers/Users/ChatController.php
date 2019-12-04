<?php

namespace App\Http\Controllers\Users;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Vendors\Chat;
use App\Models\Vendors\ChatMessage;
use Auth;
class ChatController extends Controller
{


	public function index(Request $request)
	{ 
     // return  $Chat = Chat::with('deals','deals.Business','deals.Business.profileImage')->first();
	  return view('users.chats.list');
	}

#------------------------------------------------------------------------------------
#    chats according to discussions
#------------------------------------------------------------------------------------


	public function chat(Request $request,$id)
	{ 
       $Chat = Chat::with([
      	'ChatMessages',
      	'deals',
      	'deals.Business',
      	'deals.Business.profileImage',
      	'ChatMessages.sender',
        'ChatMessages.receiver'
      ])->where('id',$id)->where('user_id',Auth::user()->id)->first();
	  return view('users.chats.chatMessages')->with('chats',$Chat);
	}
#------------------------------------------------------------------------------------
#   sendMesage
#------------------------------------------------------------------------------------


	public function sendMesage(Request $request,$id)
	{ 
       $Chat = Chat::where('id',$id)->where('user_id',Auth::user()->id);
       if($Chat->count() > 0){
                $c = $Chat->first();
                $m = new ChatMessage;
                $m->sender_id = trim(Auth::user()->id);
                $m->receiver_id = trim($c->vendor_id);
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
    $text  ='<li class="replies">';
    $text .='<img src="'.ProfileImage(Auth::user()->profile_image).'" alt="" />';
    $text .='<p>'.$msg->message.'</p>';
    $text .='</li>';
	return $text;
}





public function getMessages(Request $request,$id)
{

  $Chat = Chat::with([
       'ChatMessages',
       'ChatMessages.sender',
       'ChatMessages.receiver',
   ])
   ->where('id',$id)->where('user_id',Auth::user()->id)->first();


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
