<?php

namespace App\Http\Controllers\Home\Checkout;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Vendors\DiscountDeal;
use App\VendorPackage;
use Auth;
use App\Models\Order;
class CheckoutController extends Controller
{
    
	public function __construct(Request $request)
	{
		 
		        $stripe = SripeAccount();

			   \Stripe\Stripe::setApiKey($stripe['sk']);
	}



   public function payWithDeal(Request $request,$dealSlug,$packageSlug)
   {

   	      $this->loginRedirect();


          $currentDate = date('Y-m-d');

   	      $deal = DiscountDeal::where('slug',$dealSlug)
   	                          //->whereDate('expiry_date', '>=', $currentDate)
   	                          ->first();

          $package = VendorPackage::where('slug',$packageSlug)->first();
         

   	      return view('users.checkout.index')
   	      ->with('deal',$deal)
   	      ->with('business',$deal->Business)
   	      ->with('error',$this->checkDealExpireDate($deal,$package))
   	      ->with('package',$package);
   }

public function checkDealExpireDate($deal,$package)
{   
	$message = 0;
	$currentDate = date('Y-m-d');
	if($deal->expiry_date >= $currentDate && $deal->start_date <= $currentDate){
        $message = "This has been Expired! (<strong>'.$deal->start_date.'</strong> To <strong>'.$deal->expiry_date.'</strong>)";
	}
    if($deal->dealPackage->id != $package->id){
        $message .= "This is not Assigned to this Deal.";
	}
    return $message;
}






public function loginRedirect($value='')
{
	$url = \Request::fullUrl();
   if(Auth::check() && Auth::user()->role != "user" ){
   	 return redirect('/login?redirectLink='.$url);
   }elseif(!Auth::check()){

     $url1 = '<a href="'.url("/login?redirectLink=".$url).'">'.redirect('/login?redirectLink='.$url).'</a>'; 
     
     $text ="<div style='margin:50px auto;background:#f2f2f2;padding:30px;text-align:center;'>
                  <h1>You are not logged in yet. We are redirecting to login Page please wait...</h1>       
           ".$url1."
     <div>";


     echo  $text;
     die;


   }

}


#---------------------------------------------------------------------------------#
#---------------------------------------------------------------------------------#
#---------------------------------------------------------------------------------#


public function payingWithDeal(Request $request,$dealSlug,$packageSlug)
{
	 
	       $currentDate = date('Y-m-d');
           $deal = DiscountDeal::where('slug',$dealSlug)->first();
           $package = VendorPackage::where('slug',$packageSlug)->first();
           
           $error = $this->checkDealExpireDate($deal,$package);

#----------------------------------------------------------            
if($error == 0){
    
    $amount = $this->getPayableAmount($deal,$package);  

    return $this->StripePay($request,$amount,$deal,$package);

}else{

}
#----------------------------------------------------------            

}



#----------------------------------------------------------------------
#----------------------------------------------------------------------
#----------------------------------------------------------------------


public function getPayableAmount($deal,$package)
{
	  $tax = 3;
	  $service_fee = 3;
	  $total = round($package->price + $service_fee) + $tax;
	  $per = $total / 100;
	 return $discountedPrice = round($deal->deal_off_type == 0) ? $deal->amount * $per :  ($total -$deal->amount);

}






public function StripePay($request,$amount,$deal,$package)
{
	         $token = $request->stripeToken;
             $customer = \Stripe\Customer::create(array(
			              "email" => Auth::user()->email,
			              "description" => "Customer for pay to admin for ",
			              "source" => $token,
             ));
 
            $total = $amount;
			  
            if($customer):
	             $charge = \Stripe\Charge::create([
				    'amount' => round($total * 100),
				    'currency' => 'usd',
   				    'description' => 'description',
   				    'receipt_email' => Auth::user()->email,
				    'customer' => $customer->id,
				 ]);

	          if($charge){

 


                     $o = new \App\Models\Order;
                     $o->vendor_id = trim($deal->user_id);
                     $o->business_id = trim($deal->vendor_category_id);
                     $o->deal_id = trim($deal->id);
                     $o->user_id = trim(Auth::user()->id);
                     $o->event_id = trim(0);
                     $o->category_id = trim($deal->category_id);
                     $o->amount = trim($total);
                     $o->payment_by = 'STRIPE';
                     $o->balance_transaction = json_encode($charge);
                     $o->status = 0;
			         $o->save();

			         return redirect()->route('thank-you');    
	           }  

	         endif;  
}




public function thankyou()
{
	return view('users.checkout.thankyou');
}


}
