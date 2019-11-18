<?php

namespace App\Http\Controllers\Home\Services;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

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








}
