<?php
namespace App\Traits\EmailTraits;
use Illuminate\Http\Request;
use App\VendorPackage;
use App\PackageMetaData;
use App\UserEventMetaData;
use Auth;
use App\Models\Vendors\DiscountDeal;
use App\Models\Order;
use App\Models\EventOrder;
use Session;
use App\Models\Admin\EmailTemplate;
trait AdminOrderSuccess {




#---------------------------------------------------------------------------------------------------
#  Order Success
#---------------------------------------------------------------------------------------------------


public function AdminOrderSuccessOrderSuccess($order_id)
{
	$template_id = $this->emailTemplate['AdminOrderSuccessFullNotification'];
  $order = Order::with('orderItems','orderItems.vendor','orderItems.vendor.vendors')->where('id',$order_id)->first();
	return $this->AdminOrderSuccessSendEmail($order,$template_id);
}


#---------------------------------------------------------------------------------------------------
#  Order Success
#---------------------------------------------------------------------------------------------------



public function AdminOrderSuccessSendEmail($order,$template_id)
{
	$template = EmailTemplate::find($template_id);
    $view= 'emails.custom_email';
    $arr = [
           'title' => $template->title,
           'subject' => $template->subject,
           'name' => 'Admin',
           'email' => 'bajwa9876470491@gmail.com'
    ];

    $data = $this->AdminOrderSuccessHtml($order,$template);
    $ar= ['data' => $data];
   return $this->sendNotification($view,$ar,$arr);
}


#---------------------------------------------------------------------------------------------------
#  Order Success
#---------------------------------------------------------------------------------------------------



public function AdminOrderSuccessHtml($order,$template)
{ 
		$text2 = $template->body;
		$orderDetail = $this->AdminOrderSuccessDetail($order);
		$text = str_replace("{OrderDetail}",$orderDetail,$text2);
		$text = str_replace("{name}",$order->user->name,$text);
 return $text;
}

#---------------------------------------------------------------------------------------------------
#  Order Success
#---------------------------------------------------------------------------------------------------


public function AdminOrderSuccessDetail($order)
{
   return $vv = view('emails.order.detail')->with('order',$order)->render();
}

 




}


 