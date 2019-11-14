<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;

class VendorController extends Controller
{
    public function index(Request $request) {
    	return view('admin.user-vendor.vendors')->with('title', 'Vendors');	
    }

   	public function ajax_getVendors(Request $request)
   	{
   		$vendors = User::select(['name', 'email'])->where('role', 'vendor')->get();
		return datatables()->of($vendors)->make(true);
   	}
}
