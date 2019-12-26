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

   return $this->stripePaymentToAccount($request);
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
                                 	///return $charge;
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




public function stripePaymentToAccount($request)
{

       $OrderID = '#ENV'.strtotime(date('y-m-d h:i:s'));

          $token = $request->stripeToken;
          $admin_fee =1000;
          $total = 10000;
          $account_id = 'acct_1Fu0uKGFWCumBAok';
          $account2 ='acct_1Fu1UYIc310lkye2';
   
           $charge = \Stripe\Charge::create([
            "amount" => 10000,
            "currency" => "usd",
            "source" => "tok_visa",
            //"shipping" => $shipping,
            "description" => "Customer for pay 2 to admin for 123",
            "application_fee" => 123
            ], 
            ["amount" => 2000,"stripe_account" => $account_id], 
            ["amount" => 2000,"stripe_account" => $account2]);

        if($charge){
            return $this->saveDataInEventOrder($charge,'STRIPE',$OrderID);
        }
 
}

#--------------------------------------------------------------------------------------------
#
#--------------------------------------------------------------------------------------------

public function saveDataInEventOrder($charge,$type,$OrderID)
{
       $order = $this->getCurentOrders();
    
       $orders = $order->update([
          'payment_type' => $type,
          'payment_status' => 1,
          'pyayment_data' => json_encode($charge),
          'type' => 'order',
          'OrderID' => $OrderID

       ]);
 
}
 

}