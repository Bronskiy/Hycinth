<?php
namespace App\Traits\CustomChatTrait;
use Illuminate\Http\Request;
use Auth;
trait CustomChatMessage {











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
          
         
   

}








#------------------------------------------------------------------------------------------------
# save message to database
#------------------------------------------------------------------------------------------------




public function CustomChatMessageSend()
{
	      

	      $chats = Chat::where('user_id',Auth::user()->id)
                       ->where('vendor_id',$deal->user_id)
                       ->where('business_id',$deal->vendor_category_id);

          if($chats->count() > 0){
                $chat = $chats->first();
                $chat->updated_at =\Carbon\Carbon::now();
                $chat->save();
                $m = new ChatMessage;
                $m->sender_id = $request['sender_id'];
                $m->receiver_id = $request['receiver_id'];
                $m->deal_id = $request['deal_id'];
                $m->business_id = $request['business_id'];
                $m->chat_id = trim($chat->id);
                $m->message = $request['message'];
                $m->sender_status = 0;
                $m->receiver_status = 0;
                $m->save();
                 return $chat->id;
          }else{
          
                $chat = new Chat;
                $chat->user_id = $request['user_id'];
                $chat->business_id = $request['business_id'];
                $chat->deal_id = $request['deal_id'];
                $chat->vendor_id =$request['vendor_id'];
                $chat->updated_at =\Carbon\Carbon::now();
                $chat->status = 0;
                if($chat->save()){
						$m = new ChatMessage;
						$m->sender_id = $request['sender_id'];
						$m->receiver_id = $request['receiver_id'];
						$m->deal_id = $request['deal_id'];
						$m->business_id = $request['business_id'];
						$m->chat_id = trim($chat->id);
						$m->message = $request['message'];
						$m->sender_status = 0;
						$m->receiver_status = 0;
                        $m->save();
                  return $chat->id;

                }

        }
}




}
