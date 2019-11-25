<?php

namespace App\Http\Controllers\Home\Ajax;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Category;
use App\VendorCategory;
use App\CategoryVariation;

class SearchController extends Controller
{
    

 
#-----------------------------------------------------------------------
#     Service Page 
#-----------------------------------------------------------------------

public function getServices(Request $request,$id)
{
	 
	 
	$variation = $id == 0 ? $this->allCategoryData($request) : $this->getDataAccordingToCate($id);


 return response()->json(['status' => 1,'data' => $variation]);
 	 
}



#-----------------------------------------------------------------------
#     Service Page 
#-----------------------------------------------------------------------


public function allCategoryData($request)
{

	       $amenityAndGames = '<option value="">Amenities & Games</option>';


		   $amenityAndGames .= '<optgroup label="Amenities">'.$this->getAllAmenity().'</optgroup>' ;

		   $amenityAndGames .= '<optgroup label="Games">'.$this->getAllAmenity('game').'</optgroup>' ;


		
  
		return $variation = [
		    'events' => $this->getAllEventTypes(),
		    'amenities' => $amenityAndGames,
		    'vendors' => $this->getAllVendor()
		 ];
	 
}


#-----------------------------------------------------------------------
#     Service Page 
#-----------------------------------------------------------------------

public function getDataAccordingToCate($id)
{
	

	    $Category = Category::with(
		 	'CategoryEvent',
		 	'CategoryEvent.Event',
		 	'businesses',
		 
		 	'CategoryAmenity',
		 	'CategoryAmenity.Amenity',
		 	'CategoryGames',
		 	'CategoryGames.Games'
		 )->where('id',$id)->first();

		$amenityAndGames = '<option value="">Amenities & Games</option>';


		$amenityAndGames .= ($Category->CategoryAmenity->count() > 0) ? '<optgroup label="Amenities">'.$this->getEvents($Category->CategoryAmenity,'Amenity','name').'</optgroup>' : '';

		$amenityAndGames .= ($Category->CategoryGames->count() > 0) ? '<optgroup label="Games">'.$this->getEvents($Category->CategoryGames,'Games','name').'</optgroup>' : '';


		
  
		return $variation = [
		    'events' => $this->getEvents($Category->CategoryEvent,'Event','name','Event Type'),
		    'amenities' => $amenityAndGames,
		    'vendors' => '<option value="">Suggested Vendor</option>'
		 ];
}


#-----------------------------------------------------------------------
#     get Events of category
#-----------------------------------------------------------------------

public function getEvents($data,$tab,$name,$label=null)
{
	 $text =$label !=null ? '<option value="">'.$label.'</option>' : '';

	 foreach ($data as $key => $value) {
	 	 $text .='<option value="'.$value->$tab->id.'">'.$value->$tab->$name.'</option>';
	 }

	 return $text;
}
 
#-----------------------------------------------------------------------
#     get Events of category
#-----------------------------------------------------------------------

public function getAllVendor()
{

    $vendors = \App\VendorCategory::where('status',3)->where('publish',1)->orderBy('title','ASC')->get();


	 $text ='<option value="">Suggested Vendor</option>';

	 foreach ($vendors as $key => $value) {
	 	 $text .='<option value="'.$value->id.'">'.$value->title.'</option>';
	 }

	 return $text;
}


#-----------------------------------------------------------------------
#     Event Type
#-----------------------------------------------------------------------


 

 public function getAllEventTypes()
 { 

 	 $CategoryVariation = CategoryVariation::with('Event')
 	                      ->join('categories','categories.id','=','category_variations.category_id')
 	                      ->select('category_variations.*')
 	                      ->where('category_variations.type','event')
 	                      ->get();

     
     return $this->getEvents($CategoryVariation,'Event','name',$label='Event Types');


 }



 public function getAllAmenity($d='amenity')
 { 

 	 $CategoryVariation = CategoryVariation::with('Event')
 	                      ->join('categories','categories.id','=','category_variations.category_id')
 	                      ->select('category_variations.*')
 	                      ->where('category_variations.type',$d)
 	                      ->get();

     
     return $this->getEvents($CategoryVariation,'Amenity','name',$label='Event Types');


 }
  

}
