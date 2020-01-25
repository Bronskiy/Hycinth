<?php

namespace App\Http\Controllers\Shop;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
 
use App\Models\Products\Product;
use Auth;
use App\Models\Vendors\Eshop;
use App\Models\Products\ProductCategory;
use App\Models\Shop\ShopCategory;
use App\Models\Products\ProductInventory;
class ProductController extends Controller
{
    
    public $filePath = 'e-shop.modules.products.';
    public $include = 'e-shop.includes.products.';

#================================================================================================
#================================================================================================
#================================================================================================

	public function index($cateSlug,$subcate,$childSlug)
	{
       $ProductCategory = ProductCategory::with([
          'categoryParent',
          'categorySubparent'
         ])->where('slug',$childSlug)->first();
		   return view($this->filePath.'index')
		        ->with('category',$ProductCategory);
	}







}
