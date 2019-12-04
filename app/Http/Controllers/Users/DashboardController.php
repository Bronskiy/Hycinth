<?php

namespace App\Http\Controllers\Users;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\User;
use Hash;

class DashboardController extends Controller {

#----------------------------------------------------------------------
#    dashboard function
#----------------------------------------------------------------------
 
public function index() {
	return view('users.dashboard.dashboard');
}

public function profile() {
	return view('users.profile');
}

public function updateProfile(Request $request) {
	$user = Auth::User();
	if($request->old_password) {
		if(Hash::check($request->old_password, $user->password)) {
	      $user->password = Hash::make($request->password);         
	      $user->save();
	      // Auth::logout();
	      return redirect()->back()->with('flash_message', 'Password has updated successfully');
	    } else {
	      return redirect()->back()->with('error_flash_message', 'Please enter currect Old Password');
	    }
	}

	if($request->hasFile('image')) {
     $path = 'images/vendors/profile/';
     $request['profile_image'] = uploadFileWithAjax($path, $request->image);
     if($user->profile_image != 'user.jpg') {
        if($user->profile_image && file_exists($path.$user->profile_image)) {
            unlink($path.$user->profile_image);
        }
     }
 	}

     $user->update($request->all());    
     return redirect()->back()->with('flash_message', "Your Profile has updated successfully"); 
}

}
