<?php
namespace App\Traits\ProductAttributes;
use Illuminate\Http\Request;
use App\Models\Products\Product;
use Auth;
use App\Models\Vendors\Eshop;
use App\Models\Products\ProductCategory;
use App\Models\Shop\ShopCategory;
use App\Models\Products\ProductAttribute;
use App\Models\Products\ProductInventory;
use App\Traits\ProductAttributes\ProductAttributes;
 
trait CreateInventory{





#=======================================================================================================
#=======================================================================================================
#=======================================================================================================


	public function createInventory(Request $request,$product_id)
	{             
		          $product = Product::find($product_id);

		          $a = new ProductInventory;
			      $a->shop_id = $product->shop_id; 
			      $a->product_id = $product->id; 
			      $a->user_id = $product->user_id; 
			      $a->sku = $request->sku;
			      $a->stock = $request->stock;
			      $a->lowInStock = $request->lowInStock;
			      $a->save();

					 
	}













}