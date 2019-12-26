<?php

namespace App\Http\Controllers\Users;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class UserOrderController extends Controller
{
    public function index()
    {
    	return view('users.orders.index');
    }
}
