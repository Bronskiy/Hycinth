<?php

namespace App\Http\Controllers\Vendor;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Category;
use App\VendorCategory;
//use App\ServiceAprovalProcess;
use Illuminate\Support\Facades\Mail;
use App\Mail\AdminBusiness;
use Auth;
class MyBusinessController extends Controller
{
    
 public $folderPath ='home.vendors.services.detail';

    #-----------------------------------------------------------------------------------
    #  index page
    #-----------------------------------------------------------------------------------
   #-----------------------------------------------------------------
   #    construct
   #-----------------------------------------------------------------
  
   public function getData($slug) {
   	  
      $category = Category::where('slug', $slug)
                           ->join('vendor_categories','vendor_categories.category_id','=','categories.id')
                           ->where('vendor_categories.user_id',Auth::User()->id);

      return $category->count() > 0 ? $category->first() : redirect()->route('vendor_dashboard')->with('error_message','Please check your url, Its wrong!');   	   
   }

    public function index($slug,$vendorSlug)
    {
    	     $category = Category::where('slug',$slug);
			 $vendorCategory = VendorCategory::with([
			 	'basicInfo',
			 	'faqs',
			 	'DealsDiscount',
			 	'ImageGallery',
			 	'VideoGallery',
			 	'description'
			 ])->where('business_url',$vendorSlug);


			 if($category->count() == 0 || $vendorCategory->count() == 0){
			 	abort(404);
			 }

	       $vendor =  $vendorCategory->first();

    
 
            $event = \App\VendorEventGame::with('Event')->where('category_id',$category->first()->id)->where('user_id',$vendor->user_id);
            $amenities = \App\VendorAmenity::where('category_id',$category->first()->id)
                                   ->where('type','amenity')
                                   ->where('user_id',$vendor->user_id);

            $games = \App\VendorAmenity::where('category_id',$category->first()->id)
                                   ->where('type','game')
                                   ->where('user_id',$vendor->user_id);



$amenitiesAndGames = ($amenities->count() > 0) ? 50 : 0;
$amenitiesAndGames += ($games->count() > 0) ? 50 : 0;

$photoVideogalery = ($vendor->ImageGallery->count() > 0) ? 50 : 0;
$photoVideogalery += ($vendor->VideoGallery->count() > 0) ? 50 : 0;


$venuesPercent = $vendor->subcategory->count() > 0 ? 25 : 0;
$venuesPercent += $vendor->VendorEvents->count() > 0 ? 25 : 0;
$venuesPercent += $vendor->styles->count() > 0 ? 25 : 0;
$venuesPercent += $vendor->seasons->count() > 0 ? 25 : 0;
$basicInfo = $vendor->basicInfo->count() > 0 ? 100 : 0;

$prohibtion = $vendor->prohibtion != null && $vendor->prohibtion->count() > 0 ? 100 : 0;

$per = 400 / 100;

$overAll = round($photoVideogalery + $amenitiesAndGames + $venuesPercent + $basicInfo) / $per;
 $percents =[
  'photoVideogalery' => $photoVideogalery,
  'amenitiesAndGames' => $amenitiesAndGames,
  'venuesPercent' => $venuesPercent,
  'basicInfo' => $basicInfo,
  'paymenMethod' => 0,
  'overAll' => $overAll,
  'prohibtion' => $prohibtion
];


 
 $types = Auth::user()->role == "vendor" ? 'vendor' : 'admin';

 return view($this->folderPath.'.vendor_view',$percents)
        ->with('games',$games)
	      ->with('types',$types)
	      ->with('reviewing',1)
	      ->with('amenities',$amenities)
	      ->with('events',$event)
	      ->with('styles',$vendor->styles)
	      ->with('services', $vendor->subcategory)
	      ->with('VendorEvents', $vendor->VendorEvents)
	      ->with('seasons',$vendor->seasons)
	      ->with('currentStatus',$this->statusMessages($vendor->status,$overAll))
	      ->with('vendor',$vendor);
}
 
#----------------------------------------------------------------------------
#     submitForApproval
#----------------------------------------------------------------------------
 
public function submitForApproval(Request $request, $slug, $vendorSlug)
{
     
     $this->getData($slug);

     $vendor = VendorCategory::where('business_url', $vendorSlug)->where('user_id',Auth::user()->id)->where('status','!=',3);


     if($vendor->count() == 0) {
     	return redirect()->route('myBusinessView', [$slug, $vendorSlug])->with('messages','Your business already Approved.');
     }

     $v= $vendor->first();
     $v->status = 2;
     $v->save();

     $request['vendor_page'] = route('vendorBusinessView', ['slug' => $vendor->first()->category->slug, 'vendorSlug' => $vendor->first()->business_url]);
     $request['title'] = $vendor->first()->title;

     Mail::to('admin001@yopmail.com')->send(new AdminBusiness($request));

    return redirect()->route('myBusinessView', [$slug,$vendorSlug])->with('messages','Your business approval submission has been submitted successfully.');
      
	 
}





#----------------------------------------------------------------------------------
# status messages
#---------------------------------------------------------------------------------

public function statusMessages($status,$overAll)
{
	switch ($status) {
		case 1:
			return $overAll > 80 ? 'Click Submit Button for Business Approval'  : 'Complete your profile aleast 80% for Business Submission';
			break;

	    case 2:
			return 'Waiting for Admin approval.';
			break;
	   case 3:
			return 'Approved Business.';
			break;
	   case 4:
			return 'Business rejected due to some reasons which are listed in the email. Please refine the information then resubmit for approval.';
			break;
		
		default:
			return 'Complete your profile aleast 80% for Business Submission';
			break;
	}
}



}
