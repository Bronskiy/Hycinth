<?php

namespace App\Http\Controllers\Home\Services;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Category;
use App\VendorCategory;
class ServiceDetailController extends Controller
{
    

 public $folderPath ='home.vendors.services.detail';

#-----------------------------------------------------------------------
#     Service Page 
#-----------------------------------------------------------------------

public function index()
{
	 
	return view($this->folderPath.'.index');
}

#-----------------------------------------------------------------------
#     Service Page 
#-----------------------------------------------------------------------


public function index2(Request $request,$cateSlug,$vendorSlug)
{
     $category = Category::where('slug',$cateSlug);
	 $vendorCategory = VendorCategory::with([
	 	'basicInfo',
	 	'faqs',
	 	'DealsDiscount',
	 	'ImageGallery',
	 	'VideoGallery',
	 	'description'
	 ])->where('business_url',$vendorSlug)->where('publish',1);


	 if($category->count() == 0 || $vendorCategory->count() == 0){
	 	abort(404);
	 }

	$vendor =  $vendorCategory->first();

    if(!empty($request->test)){


    	 $vendorCategory = VendorCategory::with([
	 	'basicInfo',
	 	'VendorEvents',
	 	'styles',
	 	'styles.style',
	 	'faqs',
	 	'DealsDiscount',
	 	'ImageGallery',
	 	'VideoGallery',
	 	'description'
	 ])->where('business_url',$vendorSlug)->where('publish',1)->first();

return $vendorCategory;
    	 
    }
 
    $event = \App\VendorEventGame::with('Event')->where('category_id',$category->first()->id)->where('user_id',$vendor->user_id);
    $amenities = \App\VendorAmenity::where('category_id',$category->first()->id)
                                   ->where('type','amenity')
                                   ->where('user_id',$vendor->user_id);

       $games = \App\VendorAmenity::where('category_id',$category->first()->id)
                                   ->where('type','game')
                                   ->where('user_id',$vendor->user_id);

 
return view($this->folderPath.'.index')
      ->with('games',$games)
      ->with('amenities',$amenities)
      ->with('events',$event)
      ->with('styles',$vendor->styles)
      ->with('services', $vendor->subcategory)
      ->with('VendorEvents', $vendor->VendorEvents)
      ->with('seasons',$vendor->seasons)
      ->with('vendor',$vendor);
}

#-----------------------------------------------------------------------
#     Service Page 
#-----------------------------------------------------------------------


public function getStyleOfThisVendor($styles,$relation,$col)
{
	$arr = [];
	if($styles->count() > 0){
		foreach ($styles as $s) {
			 array_push($arr, $s->$relation->$col);
		}


	}
	return count($arr) > 0 ? implode(', ', $arr) : '';
}
 

}
