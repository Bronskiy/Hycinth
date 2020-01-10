<?php

namespace App\Http\Controllers\Home;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Traits\CustomChatTrait\CustomChatMessage as CustomChat;
use App\Models\Vendors\Chat;
use App\Models\Vendors\ChatMessage;
use App\VendorPackage;
class PackageCompareController extends Controller
{
    
use CustomChat;

#-----------------------------------------------------------------------------------
# index 
#-----------------------------------------------------------------------------------

public function index(Request $request)
{
  if(@sizeof($request->categories)){

   $packages = VendorPackage::whereIn('id',$request->categories);
   $view = $request->type == 1 ? 'home.includes.comparePackages.list' : 'home.includes.comparePackages.boxes';
   $vv = view($view)->with('packages',$packages)->render();

  }else{
  	$vv = '';
  }
 
	return response()->json(
		[
         'status' => 1,
         'htm' => $vv
		]);
}





#------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------

public function sendMessages(Request $request,$id)
{
   
}


}
