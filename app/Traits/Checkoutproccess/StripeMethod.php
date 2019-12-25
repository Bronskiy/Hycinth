<?php
namespace App\Traits\Checkoutproccess;
use Illuminate\Http\Request;
use App\Traits\Checkoutproccess\Ordersummary;
use App\Traits\Checkoutproccess\CheckoutPayment;
use App\VendorPackage;
use App\PackageMetaData;
use App\UserEventMetaData;
use Auth;
use App\Models\Vendors\DiscountDeal;
use App\Models\EventOrder;
use Session;
trait StripeMethod {





#---------------------------------------------------------------------------------
#  comming response after paying with Stripe Method
#---------------------------------------------------------------------------------

public function payWithStripe(Request $request)
{
     $error = '';
     if(empty($request->stripeToken)):
        
         $error .= '<li>Stripe token Expired!</li>';

     else:
                       
	              $token = $request->stripeToken;
                  $total = 1000;
                       # create customer to stripe while payment
         try {
    
                      $customer = \Stripe\Customer::create(array(
                              "email" => Auth::user()->email,
                              "description" => "Customer for pay to admin for ",
                              "source" => $token,
                       ));
 
                      if($customer){
                                  $charge = \Stripe\Charge::create([
	                                     'amount' => round($total * 100),
	                                     'currency' => 'usd',
	                                     'description' => 'description',
	                                     'receipt_email' => Auth::user()->email,
	                                     'customer' => $customer->id,
                                   ]);

                                 if($charge){
                                 	return $charge;
                                       //return $this->saveDataAfterPayment($deal,$package,$charge,'STRIPE');
                                 }else{
                                      $error .= '<li><b>Payment Failed</b> Something Wrong going on!</li>';
                                 } 

                        
                      }else{
                         $error .= '<li><b>Payment Failed</b> Something Wrong going on!</li>';
                      }
         } catch (Exception $e) {
             echo 'Caught exception: ',  $e->getMessage(), "\n";
         }


        // else:  # check if customer not created
        

        // endif; 

	   endif; 

     return $error;
      # check if request has Token 
}

#---------------------------------------------------------------------------------
#  comming response after paying with Stripe Method
#---------------------------------------------------------------------------------




}