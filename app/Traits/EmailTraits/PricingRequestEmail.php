<?php
namespace App\Traits\EmailTraits;
use Illuminate\Http\Request;
use App\User;
use Session;
use App\Models\Admin\EmailTemplate;
trait PricingRequestEmail {




#---------------------------------------------------------------------------------------------------
#  Order Success
#---------------------------------------------------------------------------------------------------


public function PricingRequestEmailSuccess($data)
{
  $template_id = $this->emailTemplate['PricingRequestEmailNotificationFullNotification'];
   
  return $this->PricingRequestEmailSendEmail($data,$template_id);
}


#---------------------------------------------------------------------------------------------------
#  Order Success
#---------------------------------------------------------------------------------------------------



public function PricingRequestEmailSendEmail($data,$template_id)
{
	  $template = EmailTemplate::find($template_id);
    $view= 'emails.customEmail';

    $arr = [
           'title' => $template->title,
           'subject' => $template->subject,
           'name' => 'Admin',
           'email' => $this->adminEmail
    ];

    $msg = $this->PricingRequestEmailHtml($data,$template);
    $ar= ['data' => $msg];
   return $this->sendNotification($view,$ar,$arr);
}


#---------------------------------------------------------------------------------------------------
#  Order Success
#---------------------------------------------------------------------------------------------------



public function PricingRequestEmailHtml($data,$template)
{ 
    $text2 = $template->body;
		$text = str_replace("{name}",$data['vendor_name'],$text2);
		$text = str_replace("{name}",$data['user_name'],$text);
    $text = str_replace("{message}",$data['message'],$text);
    return $text;
}

#---------------------------------------------------------------------------------------------------
#  Order Success
#---------------------------------------------------------------------------------------------------
 
  
}


 