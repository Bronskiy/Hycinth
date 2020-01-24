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

		          $old = ProductInventory::where('user_id',$product->user_id)
		          ->where('product_id',$product->id)
		          ->where('product_id',$product->id)
		          ->where('shop_id',$product->shop_id);


		          if($old->count() == 0){
                      $a = new ProductInventory;
				      $a->shop_id = $product->shop_id; 
				      $a->product_id = $product->id; 
				      $a->user_id = $product->user_id; 
				      $a->sku = $request->sku;
				      $a->status = !empty($request->hasStock) ? 1 : 0;
				      $a->stock = $request->stock;
				      $a->lowInStock = $request->lowInStock;
				      $a->save();

		          }else{

		          	  $a =$old->first();
				      $a->shop_id = $product->shop_id; 
				      $a->product_id = $product->id; 
				      $a->user_id = $product->user_id; 
				      $a->sku = $request->sku;
				      $a->stock = $request->stock;
				      $a->status = !empty($request->hasStock) ? 1 : 0;
				      $a->lowInStock = $request->lowInStock;
				      $a->save();
		          	
		          }

		          return response()->json(['status' => 1]);

				 
	}



#=====================================================================================================
#
#=====================================================================================================


	public function checkSkU(Request $request)
	{
		                      $u = ProductInventory::where('sku',$request->sku)
		                       ->orWhere(function($t) use($request){
                                      if($request->type == 1 && $request->variation_id > 0){
											$u->where('variation_id','!=',$request->variation_id);
                                      }elseif($request->type == 0){
											$u->where('product_id','!=',$request->product_id);
                                      }
		                       })
		                       ->count();

		
       return $u == 0 ? 1 : 0;
		 
	}









}