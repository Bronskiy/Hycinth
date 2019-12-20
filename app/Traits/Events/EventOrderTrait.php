<?php
namespace App\Traits\Events;
use Illuminate\Http\Request;
use App\VendorPackage;
use App\PackageMetaData;
use App\UserEventMetaData;
use Auth;
use App\Models\Vendors\DiscountDeal;
use App\Models\EventOrder;

trait EventOrderTrait {


#--------------------------------------------------------------------
#--------------------------------------------------------------------
#--------------------------------------------------------------------
 
public function checkCategoryExistAccordingToEvent($package,$events,$discounted)
{  
    
    $order = EventOrder::where('category_id',$package->id)
                       ->where('user_id',Auth::user()->id)
                       ->where('event_id',$events->id);
    return $order;
   
}

#--------------------------------------------------------------------
# total Spend on the Event
#--------------------------------------------------------------------
 

public function totalSpendEvent($events,$user_id,$type=null)
{  
    
    $order = EventOrder::where('user_id',$user_id)
                       ->where('event_id',$events->id)
                       ->where(function($t) use($type){
                       	    if($type != null){
                       	    	$t->where('type',$type);
                       	    }
                       });
    return $order->sum('discounted_price');
   
}

#--------------------------------------------------------------------
# total Spend on the Event
#--------------------------------------------------------------------
 


public function orderRelatedTableBackup($events,$package,$request)
{
	 $package_data = $package;
	 $event_data = $events;
	 $deal_data = $this->getDealJson($request);



	 return [
          'package_data' => $package_data,
          'event_data' => $event_data,
          'deal_data' => $deal_data

	 ];

}



public function getDealJson($request)
{
	$deal_id = !empty($request->deal_id) && $request->deal_id > 0 ? $request->deal_id : 0;

	$deals = DiscountDeal::find($deal_id);

	return !empty($deals) ? $deals : [];
	                      
}


















}