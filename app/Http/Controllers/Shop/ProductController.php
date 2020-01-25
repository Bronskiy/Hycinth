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
use App\Models\Products\ProductImage;
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




#================================================================================================
#================================================================================================
#================================================================================================

	public function detail($slug)
	{
        $product = Product::with('ProductImages','ProductAttributeVariableProduct','ProductAttributeVariableProduct.childAttributes')->where('slug',$slug)->where('create_status',1)->first();
		   return view($this->filePath.'detail')
		        ->with('product',$product);
	}



#=================================================================================================
#=================================================================================================
#=================================================================================================

 


}
