<?php

namespace App\Http\Controllers\Users;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Vendors\Chat;
use App\Models\Vendors\ChatMessage;
use Auth;
class CartController extends Controller
{





public function index()
{
	return view('home.cart.index');
}










}