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


public function index($value='')
{
	 return $Vendors = $this->getVendorData();
}




#-------------------------------------------------------------------------------
# Vendor Listing Page
#------------------------------------------------------------------------------


public function getVendorData()
{
	 $category =  VendorCategory::with('basicInfo')
	 ->join('users','users.id','=','vendor_categories.user_id')
	 ->select('vendor_categories.*')
	 ->where('parent',0)
	 ->where('business_url','!=','')
	 ->where('publish',1);
	  
 
	 return view('home.vendors.listing',[
        'categories' => $category->paginate(10),
        'categoryCount' => $category->count(),
	 ]);
}





}

 