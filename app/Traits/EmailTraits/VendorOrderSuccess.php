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
trait VendorOrderSuccess {




#---------------------------------------------------------------------------------------------------
#  Order Success
#---------------------------------------------------------------------------------------------------


public function VendorOrderSuccessOrderSuccess($order_id)
{
  $template_id = $this->emailTemplate['VendorOrderSuccessFullNotification'];
  $orderItems = EventOrder::where('order_id',$order_id)->where('type','order')
                          ->groupBy('vendor_id')
                          ->get();
  $var= 0;
  foreach ($orderItems as $item) {
    $var = $this->VendorOrderSuccessSendEmail($item,$template_id);
    
  }

  return $var;
}


#---------------------------------------------------------------------------------------------------
#  Order Success
#---------------------------------------------------------------------------------------------------



public function VendorOrderSuccessSendEmail($order,$template_id)
{   
    $template = EmailTemplate::find($template_id);
    $view= 'emails.custom_email';
    $arr = [
           'title' => $template->title,
           'subject' => str_replace("{orderID}",$order->OrderID,$template->subject),
           'name' => $order->vendor->vendors->name,
           'email' => $order->vendor->vendors->email
    ];
    
    $data = $this->VendorOrderSuccessHtml($order,$template);
    $ar= ['data' => $data];
   return $this->sendNotification($view,$ar,$arr);
}


#---------------------------------------------------------------------------------------------------
#  Order Success
#---------------------------------------------------------------------------------------------------



public function VendorOrderSuccessHtml($order,$template)
{ 
		$text2 = $template->body;
		$orderDetail = $this->VendorOrderSuccessDetail($order);
		$text = str_replace("{OrderDetail}",$orderDetail,$text2);
		$text = str_replace("{name}",$order->user->name,$text);
 return $text;
}



public function VendorOrderSuccessDetail($order)
{
   return $vv = view('emails.order.vendors.order_detail')->with('item',$order)->render();
}

 


}