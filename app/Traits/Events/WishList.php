<?php
namespace App\Traits\Events;
use Illuminate\Http\Request;
use App\VendorPackage;
use App\PackageMetaData;
use App\UserEventMetaData;
use Auth;
use App\Models\Vendors\DiscountDeal;
use App\Models\EventOrder;

trait WishList {



#---------------------------------------------------------------------------------------
#  Add To Wish List
#---------------------------------------------------------------------------------------

public function addToWishList(Request $request)
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

		              	   $wishlist = $this->CheckWishListExist($events,$package);

		              	   if($wishlist->count() == 0){
		              	     	$msg = $this->checkAllConditionBeforeAddingPackage('wishlist_package_success',$request);
                                $message = ['status' => 1,'url'=> '/','errors' => $msg];
 		              	   }else{
		              	   	   $msg = $this->checkAllConditionBeforeAddingPackage('wishlist_package_exist',$request); 	

		                       $message = ['status' => 0,'url'=> '','errors' => $msg];
		              	   	
		              	   }


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



#-----------------------------------------------------------------------------------------------------
#    Check Wish list is exist or not
#-----------------------------------------------------------------------------------------------------


public function CheckWishListExist($event,$package)
{
	 $wishlist = EventOrder::where('user_id',Auth::user()->id)
	                        ->where('event_id',$event->id)
	                        ->where('type','wishlist')
	                        ->where('vendor_id',$package->vendor_category_id);

	  return $wishlist;
}


}