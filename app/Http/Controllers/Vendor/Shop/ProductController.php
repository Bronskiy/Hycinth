<?php

namespace App\Http\Controllers\Vendor\Shop;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ProductController extends Controller
{

public $filePath = 'vendors.E-shop.products.';


#=====================================================================================
#  index 
#=====================================================================================

public function index($value='')
{
	

	return view($this->filePath.'index');
}







}
