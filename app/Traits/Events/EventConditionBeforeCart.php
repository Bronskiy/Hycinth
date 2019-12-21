<?php
namespace App\Traits\Events;
use Illuminate\Http\Request;
use App\VendorPackage;
use App\PackageMetaData;
use App\UserEventMetaData;
use Auth;
use App\Models\Vendors\DiscountDeal;
trait EventConditionBeforeCart {

use EventOrderTrait;
use WishList;



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

	  $response = $this->checkAllConditionOfEvent($events,$request);
  	 
      return response()->json($response);
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



#-----------------------------------------------------------------------------------------
#  check deal package have related to user event
#-----------------------------------------------------------------------------------------  


public function checkAllConditionOfEvent($events,$request,$type=null)
{     
	  $msg ='';
      $status = 0;
      $package_id = $request->package_id;
	  
	  # this function is check that the event type of package which are selected and your event's eventtype both are same
	  $evenTypeStatus = $this->dealHaveRelatedEventType($events,$package_id);


	 # this function is check that the category of package which is selected and your event's category both are same
	 $cartStatus = $this->chackAlreadyBuyOrCart($evenTypeStatus,$events,$package_id,$type);
	   
	   # this function is check that the category of package which is selected and your event's category both are same
	  $categoryStatus = $this->PackageAndEventHaveSameCategory($cartStatus,$events,$package_id);

	   # this function is check that the category of package which is selected and your event's category both are same
	  $capacityStatus = $this->PackageAndEventCapacity($categoryStatus,$events,$package_id);

	   # this function is check that the category of package which is selected and your event's category both are same
	  $budgetStatus = $this->PackageAndEventBudget($capacityStatus,$events,$request);

	  if($evenTypeStatus == 0){
	  	  $status = 0;
          $msg = $this->checkAllConditionBeforeAddingPackage('event_type');
	  }elseif ($cartStatus == 0) {
	  	  $status = 0;
	  	  $type_message = $type == 'wishlist' ? 'event_category_exist_wishlist' : 'event_category_exist';
	  	  $msg = $this->checkAllConditionBeforeAddingPackage($type_message,$request);
	  }elseif ($categoryStatus == 0) {
	  	  $status = 0;
	  	  $msg = $this->checkAllConditionBeforeAddingPackage('event_category',$request);
	  }elseif ($capacityStatus == 0) {
	  	  $status = 0;
	  	  $msg = $this->checkAllConditionBeforeAddingPackage('event_capacity',$request);
	  }elseif ($budgetStatus == 2) {
	  	  $status = 0;
	  	  $msg = $this->checkAllConditionBeforeAddingPackage('package_exist',$request); 	  
	    
	  }elseif ($budgetStatus == 0) {
	  	  $status = 0;
	  	  $msg = $this->checkAllConditionBeforeAddingPackage('out_of_budget',$request);
	  }else{
	  	$status = 1;
	  }
 
	  return [
     	   'status' => $status,
       	   'records' => $events->eventCategories,
     	   'errors' => $msg
        ];
}

#-----------------------------------------------------------------------------------------
#  check deal package have related to user event
#-----------------------------------------------------------------------------------------  

public function chackAlreadyBuyOrCart($evenTypeStatus,$events,$package_id,$type)
{
	 if($evenTypeStatus == 1){
	 	      $package = VendorPackage::find($package_id);

            $order = $this->checkCategoryExistAccordingToEvent($package,$events);

	          $exist = $order->where(function($t) use($type){
	                   if($type != null){
	                   	$t->where('type',$type);
	                   }
	          })->count();
         
         return $exist == 0 ? 1 : 0;
	 }
}


#-----------------------------------------------------------------------------------------
#  check deal package have related to user event
#-----------------------------------------------------------------------------------------  



public function PackageAndEventHaveSameCategory($evenTypeStatus,$events,$package_id)
{
 if($evenTypeStatus == 1){
     $package = VendorPackage::find($package_id);
     $event_category = UserEventMetaData::where('event_id',$events->id)
                                           ->where('key','category_id')
                                           ->where('type','events')
                                           ->where('key_value',$package->category_id)
                                           ->where('user_id',Auth::user()->id)
                                           ->count();

     return $event_category > 0 ? 1 : 0;
     
  }
  return 0;	 
}

#-----------------------------------------------------------------------------------------
#  Package And Event Capacity
#-----------------------------------------------------------------------------------------  


public function PackageAndEventCapacity($categoryStatus,$events,$package_id)
{
 if($categoryStatus == 1){
     $package = VendorPackage::find($package_id);

     $package_min_person_capacity = $package->min_person;
     $package_max_person_capacity = $package->max_person;

     $eventMinPersonCapacity = $events->min_person;
     $eventMaxPersonCapacity = $events->max_person;

     if($eventMaxPersonCapacity < $package_min_person_capacity || $eventMaxPersonCapacity > $package_max_person_capacity){
         $capacity = 0;  
     }else{
     	 $capacity = 1;
     }
     return $capacity;
   }
}


#-----------------------------------------------------------------------------------------
#  check deal package have related to user event
#-----------------------------------------------------------------------------------------  



public function PackageAndEventBudget($capacityStatus,$events,$request)
{
	if($capacityStatus == 1){
		$event_budget = $events->event_budget;
        $package = VendorPackage::find($request->package_id);

        $discounted = $this->CheckDealRelatedPackage($package,$request);
        $EvenOrder = $this->checkCategoryExistAccordingToEvent($package,$events,$discounted);

        $UsedBudget = $this->totalSpendEvent($events,Auth::user()->id);
        
        $includedWithPackage = ($discounted + $UsedBudget);

        $budgetStatus = $event_budget >= $includedWithPackage ? 1 : 0;

        $order = $EvenOrder->where('type','!=','whistlist')->count();

        return $EvenOrder->count() == 0 ? $budgetStatus : 2;
        

   }
	 
}


public function CheckDealRelatedPackage($package,$request)
{   
	$price = $package->price;
	 
	$percent = round($price / 100);
	$deal_id = !empty($request->deal_id) && $request->deal_id > 0 ? $request->deal_id : 0;

	$deals = DiscountDeal::where('id',$deal_id)
	                     ->whereDate('start_date','>=',date('Y-m-d'))
	                     ->whereDate('expiry_date','<=',date('Y-m-d'))
	                     ->where('packages',$package->id);


	if($deals->count() > 0){

	   $price = $deal->deal_off_type == 0 ? round(($deal->amount - ($price * $percent))) : ($price -$deal->amount);
	}

	return $price;


 
}
 
#-----------------------------------------------------------------------------------------
#  check deal package have related to user event
#-----------------------------------------------------------------------------------------  

public function checkAllConditionBeforeAddingPackage($errorType,$request=[])
{
	$msg = '';
	switch ($errorType) {
		case 'event_type':
			$msg= 'Your event type is not related to this package';
			break;

		case 'event_category':
		    $package = VendorPackage::find($request->package_id);
			$msg= 'You did not choosed <b>'.$package->title.'</b> category, In your current selected event!';
			break;
		
		case 'event_capacity':
		    //$package = VendorPackage::find($request->package_id);
			$msg= 'Guest Capacity does not matched with your Events Package.';
			break;
		case 'wishlist_package_exist':
		    //$package = VendorPackage::find($request->package_id);
			$msg= 'You already have this package. Try with another Package.';
			break;

		case 'wishlist_package_success':
		    //$package = VendorPackage::find($request->package_id);
			$msg= 'The Package has been added successfully in your Wishlist.';
			break;
        case 'event_category_exist_wishlist':
		    //$package = VendorPackage::find($request->package_id);
			$msg= 'The Package already exist in your Wishlist.';
			break;

	     case 'event_category_exist':
		    //$package = VendorPackage::find($request->package_id);
			$msg= 'The Package has been added successfully in your Wishlist.';
			break;


		case 'wishlist_package':
		    //$package = VendorPackage::find($request->package_id);
			$msg= 'You already have this package in your wishlist. Try with another Package.';
			break;
		case 'out_of_budget':
		     $package = VendorPackage::find($request->package_id);
             $packagePrice = $this->CheckDealRelatedPackage($package,$request);
             $event_id = !empty($request->event_type) ? $request->event_type : $request->event_id;
             $events = \App\UserEvent::where('id',$event_id);
             $event_budget = $events->count() > 0 ? $events->first()->event_budget : $request->event_type;

			$msg= 'Your Event Budget <b>($'.$event_budget.')</b> is low for this package <b>($'.$packagePrice.')</b>. Please increase the budget of your Event to proceed further.';
			break;
		
		default:
			# code...
			break;
	}

   return $msg;
	 

}
















}