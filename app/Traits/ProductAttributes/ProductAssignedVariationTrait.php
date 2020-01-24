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
use App\Models\Products\ProductAssignedVariation;
use App\Traits\ProductAttributes\ProductAttributes;
 
trait ProductAssignedVariationTrait{





#===============================================================================================================
#===============================================================================================================
#===============================================================================================================


public function createNewVariationWithAttributeAndStockManagable(Request $request,$product_id)
{
     
      $product = Product::find($product_id);
	  if($product->user_id == Auth::user()->id){
	  	if($this->checkAlreadyExistVariationOrNot($request,$product) == 0){
	  		$status =['status' => 0,'messages' => 'This variation already Exist Please check again'];
	  	}else{
             $this->createInventoryAndVariations($request,$product);
             $status =['status' => 1,'messages' => 'This variation is saved successfully.'];
	  	}

       return response()->json($status);
			 

	  }
}



#==============================================================================================================
#==============================================================================================================
#==============================================================================================================


public function createInventoryAndVariations($request,$product)
{
 

        $v = new ProductAssignedVariation;
		$v->shop_id = $product->shop_id;
		$v->user_id = $product->user_id;
		$v->product_id = $product->id;
		$v->price = $request->price;
		$v->sale_price = $request->sale_price;
		$v->status = $request->stock_status;
		$v->status = !empty($request->hasStockManage) ? 1 : 0;
		$v->weight=$request->weight;
        $v->height=$request->height;
        $v->width=$request->width;
        $v->length=$request->length;
        if($v->save()){
            return $this->savingAttributeOfVariation($request,$product,$v->id);
        }
}


#==============================================================================================================
#==============================================================================================================
#==============================================================================================================

public function savingAttributeOfVariation($request,$product,$variation_id)
{
 
	foreach ($request->variations as $type => $attribute_id) {
            $v = new ProductAssignedVariation;
			$v->product_id = $product->id;
			$v->shop_id = $product->shop_id;
			$v->user_id = $product->user_id;
			$v->parent = $variation_id;
			$v->type = $type;
			$v->attribute_id = $attribute_id;
			$v->save();
	}

	return $this->ProductInventoryChecking($request,$product,$variation_id);

  
}


#==============================================================================================================
#==============================================================================================================
#==============================================================================================================

public function checkAlreadyExistVariationOrNot($request,$product)
{

   $arr1 = [];
   $arr2 = [];
   $i = 0;
	foreach ($request->variations as $type => $attribute_id) {

	                  $get = ProductAssignedVariation::where('user_id',$product->user_id)
	                         ->where('product_id',$product->id)
	                         ->where('shop_id',$product->shop_id)
	                         ->where('type',$type)
	                         ->where('attribute_id',$attribute_id)
	                         ->count();
	        if($get > 0){
	        	array_push($arr1,$attribute_id);
	        }
	        array_push($arr2,$attribute_id);
		 $i++; 
	}

sort($arr1); 
sort($arr2); 

return $i > 0 && $arr1 == $arr2 ? 0 : 1;

	//return ;

}



#==========================================================================================================
#==========================================================================================================
#==========================================================================================================


public function ProductInventoryChecking($request,$product,$variation_id=0)
{
	$status = 1;
	if(!empty($request->hasStockManage)){
       
       if($variation_id > 0){
          $ProductInventory = ProductInventory::where('shop_id',$product->shop_id)
		                                     ->where('product_id',$product->id)
		                                     ->where('user_id',$product->user_id)
		                                     ->where('variation_id',$variation_id);
         

          $stock = $ProductInventory->count() > 0 ? $ProductInventory->first() : new ProductInventory;

		 
	      $stock->shop_id = $product->shop_id; 
	      $stock->product_id = $product->id; 
	      $stock->user_id = $product->user_id; 
	      $stock->sku = $request->sku;
	      $stock->status = !empty($request->hasStock) ? 1 : 0;
	      $stock->stock = $request->stock;
	      $stock->variation_id = $variation_id;
	      $stock->lowInStock = $request->lowInStock;
	      $stock->save();
	     }
		                                     
	}else{
		 $ProductInventory = ProductInventory::where('shop_id',$product->shop_id)
		                                     ->where('product_id',$product->id)
		                                     ->where('user_id',$product->user_id)
		                                     ->where('variation_id',$variation_id)
		                                     ->delete();
	}
	return 1;
}



}