<?php
namespace App\Traits\Checkoutproccess;
use Illuminate\Http\Request;
use App\Traits\Checkoutproccess\Ordersummary;
use App\Traits\Checkoutproccess\CheckoutPayment;
use App\Traits\Checkoutproccess\StripeMethod;
use App\VendorPackage;
use App\PackageMetaData;
use App\UserEventMetaData;
use Auth;
use App\Models\Vendors\DiscountDeal;
use App\Models\EventOrder;
use Session;
trait Billing {

use Ordersummary;
use CheckoutPayment;
use StripeMethod;






#---------------------------------------------------------------------------------
# Billing Address
#---------------------------------------------------------------------------------
public function billingAddress()
{
   return view('users.checkout.steps.billing')
   ->with('stepNumber',1)
   ->with('haveDeal',1)
   ->with('orders',$this->getCurentOrders())
   ->with('address',$this->getBillingAddress());
}

#---------------------------------------------------------------------------------
# Billing Address
#---------------------------------------------------------------------------------

public function postAddress(Request $request)
{
        $rules = [
	         'name' => 'required',
	         'email' => 'required',
	         'phone_number' => 'required',
	         'address' => 'required',
	         'country' => 'required',
	         'state' => 'required',
	         'city' => 'required',
	         'zipcode' => 'required',
	         'latitude' => 'required',
	       
         ];

     $v = \Validator::make($request->all(),$rules,[
             'latitude.required' => 'Please choose address from dropdown'
     ]);

     if($v->fails()){
     	return response()->json(['status' => 0,'errors' => $v->errors()]);
     }else{

     	 $arr = [
	         'name' => $request->name,
	         'email' => $request->email,
	         'phone_number' => $request->phone_number,
	         'address' => $request->address,
	         'country' => $request->country,
	         'state' => $request->state,
	         'city' => $request->city,
	         'zipcode' => $request->zipcode,
	         'latitude' => $request->latitude,
	         'longitude' =>$request->longitude,
         ];

          
         Session::put('billingAddress',json_encode($arr));

         return response()->json(['status' => 1,'errors' => 'Billing Address is saved', 'redirectLink' => url(route('checkout.orderSummary'))]);


     }
}

#---------------------------------------------------------------------------------
# Billing Address Object
#---------------------------------------------------------------------------------
public function getBillingAddress()
{
	 $address = [ 
	  'name' => '',
	  'email' => '',
	  'phone_number' => '',
	  'address' => '',
	  'country' => '',
	  'state' => '',
	  'city' => '',
	  'zipcode' => '',
	  'latitude' => '',
	  'longitude' => ''
	];

	$billing = Session::has('billingAddress') ? json_decode(Session::get('billingAddress')) : $address;

	return (object)$billing;
}


#-----------------------------------------------------------------------------------------------------------
#   check steps
#-----------------------------------------------------------------------------------------------------------

public function checkStep($number)
{
    $order = $this->getCurentOrders();

	if($order->count() == 0){
		return redirect()->route('my_cart')->with('messages','Your cart have no item to buy.');
	}
	if(!Session::has('billingAddress') && $number > 1){
		return redirect()->route('checkout.billingAdress')->with('messages','Please complete the billing step first');
	}
 
	if(!Session::has('OrderSummary') && $number > 2){
		return redirect()->route('checkout.orderSummary')->with('messages','Please complete the order summary step first');
	}
}

#-----------------------------------------------------------------------------------------------------------
#   check steps
#-----------------------------------------------------------------------------------------------------------

public function checkDirectOrNot()
{
	return $paymentType = \Request::segment(1) == "checkout" ? "cart" : "direct";
}


}