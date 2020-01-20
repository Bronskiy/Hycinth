<?php

namespace App\Http\Controllers\Vendor\Shop;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Vendors\Eshop;
class ShopController extends Controller
{
    public $filePath = 'vendors.E-shop.';


    public function index()
    {
    	return view($this->filePath.'index');
    }

#-------------------------------------------------------------------------------------------
#-------------------------------------------------------------------------------------------
#-------------------------------------------------------------------------------------------

    public function check(Request $request)
    {
      
       $e = Eshop::orWhere(function($t) use($request){
                $t->where('name',$request->shop_name);
       });
    	
    	return $e->count() == 0 ? 'true' : 'false';
    }



}
