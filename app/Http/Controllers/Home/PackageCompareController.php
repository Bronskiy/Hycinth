<?php

namespace App\Http\Controllers\Home;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\VendorPackage;
class PackageCompareController extends Controller
{
    


#-----------------------------------------------------------------------------------
# index 
#-----------------------------------------------------------------------------------

public function index(Request $request)
{
  if(@sizeof($request->categories)){

   $packages = VendorPackage::whereIn('id',$request->categories);
   $vv = view('home.includes.comparePackages.boxes')->with('packages',$packages)->render();
  }else{
  	$vv = '';
  }
 
	return response()->json(
		[
         'status' => 1,
         'htm' => $vv
		]);
}




}
