<?php
namespace App\Traits\Checkoutproccess;
use Illuminate\Http\Request;
use App\VendorPackage;
use App\PackageMetaData;
use App\UserEventMetaData;
use Auth;
use App\Models\Vendors\DiscountDeal;
use App\Models\EventOrder;
use Session;
trait Ordersummary {



#-------------------------------------------------------------------------------------------------------
#  Order Summary Listing Page
#-------------------------------------------------------------------------------------------------------


public function orderSummary()
{
	$this->checkStep(2);

	 Session::put('OrderSummary',1);
	return view('users.checkout.steps.orderSummary') 
	->with('orders',$this->getCurentOrders())
	->with('stepNumber',2)
    ->with('haveDeal',1);
}

 
#-------------------------------------------------------------------------------------------------------
#  Order Summary Listing Page
#-------------------------------------------------------------------------------------------------------


public function getCurentOrders()
{  
     $checkoutType = $this->checkDirectOrNot();
     return $orderEvent = EventOrder::where('user_id',Auth::user()->id)->where('type','cart')->where('checkout_type',$checkoutType);
	 
}



#------------------------------------------------------------------------------------------------------
#  get Order Summary
#------------------------------------------------------------------------------------------------------


public function getOrderSummary()
{
	   $order = $this->getCurentOrders();
                   
 
    $items = view('users.includes.cart.list')->with('CartItems',$order->get());

    $amountDetail = view('users.includes.cart.cart_total')->with('CartItems',$order);


   
    $data = [
            'items' => $items->render(),
            'amountDetail' => $amountDetail->render(),
           ];

    return response()->json([
            'status' => 1,
            'data' => $data
    ]);
}








}