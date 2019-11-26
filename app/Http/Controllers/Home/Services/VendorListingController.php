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
  return $Vendors =  $this->getVendorData($request);
}


 











function distance($lat1, $lon1, $lat2, $lon2, $unit) {
  if (($lat1 == $lat2) && ($lon1 == $lon2)) {
    return 0;
  }
  else {
    $theta = $lon1 - $lon2;
    $dist = sin(deg2rad($lat1)) * sin(deg2rad($lat2)) +  cos(deg2rad($lat1)) * cos(deg2rad($lat2)) * cos(deg2rad($theta));
    $dist = acos($dist);
    $dist = rad2deg($dist);
    $miles = $dist * 60 * 1.1515;
    $unit = strtoupper($unit);

    if ($unit == "K") {
      return ($miles * 1.609344);
    } else if ($unit == "N") {
      return ($miles * 0.8684);
    } else {
      return $miles;
    }
  }
}


#-------------------------------------------------------------------------------
# Vendor Listing Page
#------------------------------------------------------------------------------


public function getVendorData($request)
{
 
	  $business = $this->getBusinesAccordingToSearch($request);

	  $category = \App\Category::join('vendor_categories','vendor_categories.category_id','=','categories.id')
                               ->select('categories.*')
                               ->where('categories.status',1)
                               ->where('categories.parent',0)
                               ->orderBy('sorting','ASC')
                               ->groupBy('categories.id')
                               ->get();

     return view('home.vendors.listing',[
        'categories' => $category,
        'businesses' => $business->get(),
        'categoryCount' => $business->count(),
	 ]);
}




#-------------------------------------------------------------------------------
# get business according  to searching
#------------------------------------------------------------------------------


public function getBusinesAccordingToSearch($request)
{

	 $lng = $request->latitude;
	 $lat = $request->longitude;

	 $ids = $this->getVendorIds($request);
	 $businesses = VendorCategory::whereIn('id',$ids);
                            
	 return $businesses;
}







#--------------------------------------------------------------------------------------------
#   get all Business ids according to search
#--------------------------------------------------------------------------------------------

public function getVendorIds($request)
{
	 $category =  VendorCategory::
	 join('users','users.id','=','vendor_categories.user_id')
	 ->join('vendor_event_games','vendor_event_games.vendor_category_id','=','vendor_categories.id')
	 ->join('vendor_amenities','vendor_amenities.vendor_category_id','=','vendor_categories.id')
	 ->select('vendor_categories.*')
	 ->where('vendor_categories.parent',0)
	 ->where(function($t) use($request){

	 	  if(!empty($request->category_id) && $request->category_id > 0){
	 	  	 $t->where('vendor_categories.category_id',$request->category_id);
	 	  }
          if(!empty($request->event_type)){
             $t->whereIn('vendor_event_games.event_id',$request->event_type);
	 	  }
         if(!empty($request->amenities)){
             $t->whereIn('vendor_amenities.amenity_id',$request->amenities);
	 	  }
          if(!empty($request->vendors) && $request->category_id == 0){
	 	  	 $t->whereIn('vendor_categories.category_id',$request->vendors);
	 	  }
     })

	 ->where('vendor_categories.business_url','!=','')
	 ->where('vendor_categories.publish',1)
	 ->groupBy('vendor_categories.id');

	return  $category->pluck('id')->toArray();
}










public function getBusiness(Request $request)
{
     $business = $this->getBusinesAccordingToSearch($request);


           $vv = view('home.vendors.includes.vendor',[
                     'businesses' => $business->get(),
                     'categoryCount' => $business->count()
                   ])->render();

      return response()->json([
        'status' => 1,
        'businesses' => $vv, 
        'businessCount' => $business->count()
      ]);
}






#------------------------------------------------------------------------------
#  venue
#------------------------------------------------------------------------------


public function venue()
{
   $category= \App\Category::where('label','LIKE','%venue%');
   $cate = $category->first();
   $parm =[];
   
   $parems = $category->count() > 0 ?  route('home_vendor_listing_page').'?category_id='.$cate->id  : '';


    return redirect($parems);
}



}

 