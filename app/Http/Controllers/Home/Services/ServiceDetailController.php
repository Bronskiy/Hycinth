<?php

namespace App\Http\Controllers\Home\Services;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Category;
use App\VendorCategory;
use Gmopx\LaravelOWM\LaravelOWM;

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


public function index2(Request $request, $cateSlug, $vendorSlug)
{
	 
     $category = Category::where('slug', $cateSlug);
	 $vendorCategory = VendorCategory::with([
	 	'VendorPackage' => function($vp){
	 		return $vp->where('status', 1)->get();
	 	},
	 	'basicInfo',
	 	'faqs',
	 	'DealsDiscount',
	 	'ImageGallery',
	 	'VideoGallery',
	 	'description',
	 ])->where('business_url',$vendorSlug)->where('publish', 1);


	 if($category->count() == 0 || $vendorCategory->count() == 0){
	 	abort(404);
	 }

    $vendor =  $vendorCategory->first();

  //   if(!empty($request->test)){


  //   	 $vendorCategory = VendorCategory::with([
	 // 	'basicInfo',
	 // 	'VendorEvents',
	 // 	'styles',
	 // 	'styles.style',
	 // 	'faqs',
	 // 	'DealsDiscount',
	 // 	'ImageGallery',
	 // 	'VideoGallery',
	 // 	'description'
	 // ])->where('business_url',$vendorSlug)->where('publish',1)->first();

		// return $vendorCategory;
    	 
  //   }
 
    $event = \App\VendorEventGame::with('Event')->where('category_id',$category->first()->id)->where('user_id',$vendor->user_id);
    $amenities = \App\VendorAmenity::where('category_id',$category->first()->id)
                                   ->where('type','amenity')
                                   ->where('user_id',$vendor->user_id);

       $games = \App\VendorAmenity::where('category_id',$category->first()->id)
                                   ->where('type','game')
                                   ->where('user_id',$vendor->user_id);

// get weather by lat and long

  //    $lowm = new LaravelOWM();

  // 	 $query = array(
	 // 	'lat' => $vendor->latitude,
	 // 	'lon' => $vendor->longitude
	 // );
	 // $current_weather = $lowm->getCurrentWeather($query, $lang = 'en', $units = 'metric', $cache = false, $time = 600);

 
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

public function getweather(Request $req) {
	$headers = [
        'Content-Type: application/json',
   	];
    
    $weather = curl_init();
    if($req->time) {
    	$req->time = \Carbon\Carbon::parse($req->time)->timestamp;
		$url = "https://api.darksky.net/forecast/8b9eccd531cf8de092a195b4d5c2d869/$req->latitude,$req->longitude,$req->time";
    } else {
    $url = "https://api.darksky.net/forecast/8b9eccd531cf8de092a195b4d5c2d869/$req->latitude,$req->longitude";
    }

    curl_setopt($weather, CURLOPT_URL, $url);
    curl_setopt($weather, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($weather, CURLOPT_HTTPHEADER, $headers);
    $server_output = curl_exec($weather);
    curl_close ($weather);
    $weather_json = json_decode($server_output, true);

    return response()->json($weather_json);
}


// public function getweather(Request $req) {
// 	$headers = [
//         'Content-Type: application/json',
//         "Access-Control-Allow-Headers: x-requested-with"
//    ];
    
//     $weather = curl_init();

//     curl_setopt($weather, CURLOPT_URL, "http://api.openweathermap.org/data/2.5/forecast/daily?APPID=9b4bbf30228eb8528d36e79d05da1fac&lat=$req->latitude&lon=$req->longitude&units=metric&cnt=$req->ctn");
//     curl_setopt($weather, CURLOPT_RETURNTRANSFER, true);
//     curl_setopt($weather, CURLOPT_HTTPHEADER, $headers);
//     $server_output = curl_exec($weather);
//     curl_close ($weather);
//     $weather_json = json_decode($server_output, true);

//     return response()->json($weather_json);
//  }

// public function getOWMWeather(Request $req) {
// 	$lowm = new LaravelOWM();

// 	 $query = array(
//  	'lat' => $req->latitude,
//  	'lon' => $req->longitude
//  );
//  // $current_weather = $lowm->getCurrentWeather($query, $lang = 'en', $units = 'metric', $cache = false, $time = 600);
//   $current_weather = $lowm->getCurrentWeather('london');
//  return response()->json($current_weather);
// }
 

}
