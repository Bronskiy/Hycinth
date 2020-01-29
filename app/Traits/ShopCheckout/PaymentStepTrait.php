<?php
namespace App\Traits\ShopCheckout;
use Illuminate\Http\Request;
use App\VendorPackage;
use App\PackageMetaData;
use App\UserEventMetaData;
use Auth;
use App\Models\Vendors\DiscountDeal;
use App\Models\EventOrder;
use Session;
use App\Models\Shop\ShopCartItems;
trait PaymentStepTrait {




public function payment()
{     
	$number = 4;
    $arr = $this->checkStep($number);
    if($arr['status'] == 1){
    	return $arr['url'];
    }

	return view($this->filePath.'payment')
		  ->with('number',$number)
		  ->with('obj',$this)
	      ->with('backward',url(route('shop.checkout.billingAddress')));	 
}






public function getTotalOrderCurrent()
{
	return (Auth::user()->ShopProductCartItems->sum('total') + getTaxPriceAccordingToZipcode()); 

}






 










}