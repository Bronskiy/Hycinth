<?php

namespace App\Http\Controllers\Home\Services;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\VendorCategory;
class VendorListingController extends Controller
{



#-------------------------------------------------------------------------------
# Vendor Listing Page
#------------------------------------------------------------------------------


public function index(Request $request)
{
	 
	 return $Vendors = $this->getVendorData($request);
}




#-------------------------------------------------------------------------------
# Vendor Listing Page
#------------------------------------------------------------------------------


public function getVendorData($request)
{

	 if(!empty($request->test)){
	 	return $this->getBusinesAccordingToSearch($request);

	 }
	 // $category =  VendorCategory::with('basicInfo')
	 // ->join('users','users.id','=','vendor_categories.user_id')
	 // ->select('vendor_categories.*')
	 // ->where('parent',0)
	 // ->where('business_url','!=','')
	 // ->where('publish',1);

	 $category = $this->getBusinesAccordingToSearch($request);
	  
 
	 return view('home.vendors.listing',[
        'categories' => $category,
        'categoryCount' => 1,
	 ]);
}




#-------------------------------------------------------------------------------
# get business according  to searching
#------------------------------------------------------------------------------


public function getBusinesAccordingToSearch($request)
{
	 
	 $category =  VendorCategory::
	 join('users','users.id','=','vendor_categories.user_id')
	 // ->join('vendor_event_games','vendor_event_games.vendor_category_id','=','vendor_categories.id')
	 // ->join('vendor_amenities','vendor_amenities.vendor_category_id','=','vendor_categories.id')
	 ->select('vendor_categories.*')
	 ->where('vendor_categories.parent',0)
	 ->where(function($t) use($request){

	 	  // if(!empty($request->category_id) && $request->category_id > 0){
	 	  // 	$t->where('vendor_categories.category_id',$request->category_id);
	 	  // }

	 	  // if(!empty($request->event_type)){
	 	  // 	$t->whereIn('vendor_event_games.event_id',$request->event_type);
	 	  // }


	 	  // if(!empty($request->vendors) && $request->category_id ==0){
	 	  // 	 $t->whereIn('vendor_categories.id',$request->vendors);
	 	  // }

	 })
	 ->where('vendor_categories.business_url','!=','')
	 ->where('vendor_categories.publish',1)
	 ->groupBy('vendor_categories.id');
	   




	 return $category->get();
}



}

 