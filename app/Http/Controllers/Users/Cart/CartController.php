<?php

namespace App\Http\Controllers\Users\Cart;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\VendorPackage;
use App\PackageMetaData;
use Auth;
class CartController extends Controller
{

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

		 $event = \App\UserEvent::with('eventCategories','eventCategories.eventCategory')
  	             ->where('user_id',Auth::user()->id)
			  	 ->where('id',$request->event_type);
			  	 

        if($event->count() > 0){

           $events = $event->first();

	        if($loginStatus == 1){
	               $status =  $this->dealHaveRelatedEventType($events,$request->package_id); 
	              if($status == 0){
	                $message = [
						     	 'status' => $status,
						     	 'errors' => 'Your event type is not related to this package'
						       ];
	              }else{
                     $url = $this->saveToCartAfterCheck($request,$events,$package);
                     $message = [
						     	 'status' => 1,
						     	 'url'=> $url,
						     	 'errors' => 'This item is added to cart successfully, we redirecting to Cart Page'
				         ];


	              }


	        }

    }else{

    	             $message = [
						     	'status' => 0,
						     	'errors' => 'The Event is not found!'
						     ];

    }
       return response()->json($message);

}





#------------------------------------------------------------------------------------
# check Login or not
#------------------------------------------------------------------------------------
 

public function saveToCartAfterCheck($request,$events,$package)
{
	return url('/');
}



#------------------------------------------------------------------------------------
# check Login or not
#------------------------------------------------------------------------------------
  
public function loginOrNot()
{
	$status = 0;

	if(Auth::check() && Auth::user()->role != "user"){
	 $status = 2;
	}

	if(Auth::check() && Auth::user()->role == "user"){
		$status = 1;
	}

	return $status;
}



#------------------------------------------------------------------------------------
# check Login or not
#------------------------------------------------------------------------------------
  
public function getAllUpcommingEventUser()
{
     
     $upcommingEvents = Auth::user()->UpcomingUserEvents;

     
}


#------------------------------------------------------------------------------------
# check Login or not
#------------------------------------------------------------------------------------
  

  public function eventCategories(Request $request)
  {
  	  $events = \App\UserEvent::with('eventCategories','eventCategories.eventCategory')
  	             ->where('user_id',Auth::user()->id)
			  	 ->where('id',$request->event_id)
			  	 ->first();
  	    
      $status =  $this->dealHaveRelatedEventType($events,$request->package_id);
       
     return response()->json([
     	'status' => $status,
     	'records' => $events->eventCategories,
     	'errors' => 'Your event type is not related to this package'
     ]);


  }


#-----------------------------------------------------------------------------------------
#  check deal package have related to user event
#-----------------------------------------------------------------------------------------  


public function dealHaveRelatedEventType($events,$package_id)
{
	

      $PackageMetaData = \App\PackageMetaData::
          where('key_value',$events->event_type)
        ->where('type','events')
        ->where('package_id',$package_id)
        ->count();

      return $PackageMetaData > 0 ? 1 : 0;
}






}
