<?php

namespace App\Http\Controllers\Users;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class DashboardController extends Controller
{
    



#----------------------------------------------------------------------
#    dashboard function
#----------------------------------------------------------------------
 
public function index()
{
	return view('users.dashboard.dashboard');
}





}
