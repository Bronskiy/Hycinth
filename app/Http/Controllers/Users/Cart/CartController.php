<?php

namespace App\Http\Controllers\Users\Cart;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Traits\Events;
use App\VendorPackage;
use App\PackageMetaData;
use App\Models\EventOrder;
use Auth;
class CartController extends Controller
{

use \App\Traits\Events\EventConditionBeforeCart;





public function index(Request $request)
{
		 $order = EventOrder::with([
		        'deal',
		        'package',
		        'event',
		        'category',
		        'user',
		        'vendor',
			])
	       ->where('type','cart')->where(function($t){
                $user_id = Auth::check() && Auth::user()->role == "user" ? Auth::user()->id : 0;
                $t->where('user_id',$user_id);
	        })
	        ->get();

	  if(!empty($request->test)){
	  	return $order;
	  }
	return view('home.cart.index')->with('CartItems',$order);
}













#------------------------------------------------------------------------------------
# packageCheck
#------------------------------------------------------------------------------------

	public function packageCheck(Request $request)
	{
		 
		 $package_id = $request->package_id; 

		 $loginStatus = $this->loginOrNot();
	     $package = VendorPackage::find($package_id);

		 $message =[];
         
         if($loginStatus == 0){

         	$message = [
               'status' => 4,
               'package' => $package,
               'message' => 'Please login with customer account.'
           ];

         }elseif($loginStatus == 2){

         	$message = [
               'status' => 4,
               'package' => $package,
               'message' => 'You are logged in with another type of user, you need to login as Customer Account'
         	];

         }else{
             
                 $upcommingEvents =  $upcommingEvents = Auth::user()->UpcomingUserEvents;

                 $message = [
		              'status' => 1,
		              'package' => $package,
		              'upcoming_events' => $upcommingEvents
         	     ];


         }


         return response()->json($message);



	}







public function addToCart(Request $request)
{
	     $package_id = $request->package_id; 
         $loginStatus = $this->loginOrNot();
	     $package = VendorPackage::find($package_id);

		 $message =[];

    if($loginStatus == 1){

            $event = \App\UserEvent::with('eventCategories','eventCategories.eventCategory')
  	                               ->where('user_id',Auth::user()->id)
			  	                   ->where('id',$request->event_type);

         if($event->count() > 0){
	                  $events = $event->first();
                      $response = $this->checkAllConditionOfEvent($events,$request);
  	                  if($response['status'] == 0){
		                $message = $response;
		              }else{
		                  $status = $this->saveToCartAfterCheck($request,$events,$package);
		                  $url = url(route('my_cart'));

		                 $msg = $status == 1 ? 'This item is added to cart successfully, we redirecting to Cart Page' : 'Something wrong going on.';

		                 $message = ['status' => $status,'url'=> $url,'errors' => $msg];
		              }
          }else{

    	             $message = ['status' => 0,'errors' => 'The Event is not found!' ];
          }

      }else{

      	 $msg = $loginStatus == 0 ? 'Please login with customer account.' : 'You are logged in with another type of user, you need to login as Customer Account';
         $message = ['status' => 4,'package' => $package,'message' => $msg];
     }  
       
  return response()->json($message);

}


#------------------------------------------------------------------------------------
# check Login or not
#------------------------------------------------------------------------------------
 

public function saveToCartAfterCheck($request,$events,$package)
{
	
	$final_package_price = $this->CheckDealRelatedPackage($package,$request); 

    $order = new EventOrder;
    $order->vendor_id = $package->vendor_category_id;
    $order->package_id = $package->id;
    $order->event_id = $events->id;
    $order->user_id = Auth::user()->id;
    $order->deal_id = $request->deal_id;
    $order->category_id = $package->category_id;
    $order->type = 'cart';
    $order->package_price = $package->price;
    $order->discounted_price = $final_package_price;
    $order->subtotal = $final_package_price;
    $order->status = 0;
    $order->related_tableData = json_encode($this->orderRelatedTableBackup($events,$package,$request));

    if($order->save()){
    	return 1;
    }


}



#------------------------------------------------------------------------------------
# check Login or not
#------------------------------------------------------------------------------------
 


}
