<?php

namespace App\Http\Controllers\Vendor;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Auth;
use App\Category;
use App\VendorCategory;
class StripePaymentSettingController extends Controller
{
 
  
public function index()
{
	 return view('vendors.settings.stripe');
}



#-------------------------------------------------------------------------------------#
#--------------------------------------Stripe Account ID save-------------------------#
#-------------------------------------------------------------------------------------#


public function store(Request $request)
{

    $this->validate($request,[
          'stripe_account_id' => 'required'
	]);

    $u = \App\User::find(Auth::user()->id);
    $u->stripe_account = trim($request->stripe_account_id);
    $u->save();

    return redirect()->back()->with('message','Your Account Has Been Connected to Stripe.');

}









}

