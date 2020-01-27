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
use App\Models\Products\ProductAssignedVariation;
use Cart;
class CartController extends Controller
{


#===============================================================================================


	public function addToCart(Request $request,$product_id)
	{

		
       $product = Product::with([
          'ProductAssignedVariations',
          'ProductAssignedVariations.hasVariationAttributes'
       ])->where('id',$product_id)->first();

       $status = $this->checkAvailbility($request,$product);

       return response()->json($status);
	}




#===============================================================================================


public function checkAvailbility($request,$product)
{
    $product_type = $product->product_type;

	switch ($product_type) {
		case  1:
			 return $this->checkVariationOfProduct($request,$product);
			break;

	    case  0:
			 return $this->addCartItem($request,$product);
			break;
		
		default:
			# code...
			break;
	}
	 
}

#=================================================================================================================


public function checkVariationOfProduct($request,$product)
{

       $variant_id = $this->variationTypeAssignedToProduct($request,$product);
        

	 switch ($variant_id) {
	 	case 0:

	 		return ['status' => 0,'messages' => 'This Variation is not available'];
            break;

	 	case $variant_id > 0:

	 	     return $this->checkHasStock($request,$product,$variant_id);
             break;
	 	
	 	default:
	 		return ['status' => 0,'messages' => 'Something Wrong'];
	 		break;
	 }
}

#================================================================================================================

public function checkHasStock($request,$product,$variant_id)
{


    return $this->addCartItem($request,$product,$variant_id);
}

#================================================================================================================

public function addCartItem($request,$product,$variant_id=0)
{
	if($variant_id > 0){

		$variant = ProductAssignedVariation::find($variant_id);

		 $item = [
             'id' => $variant->id,
             'name' => $product->name,
             'price' => $variant->final_price,
             'quantity' => 1,
             'attributes' => [
                'options' => json_encode($request),
                'variant_id' => $variant->id
             ]
		 ];
          
	}else{
		 $item = [
             'id' => $product->id,
             'name' => $product->name,
             'price' => $product->final_price,
             'quantity' => 1,
             'attributes' => [
                'options' => json_encode($request),
                'variant_id' => 0
             ]
		 ];
	}

    Cart::add($item);

    return ['status' => 1,'messages' => 'Product is added to cart successfully!'];
}


#=================================================================================================================
public function variationTypeAssignedToProduct($request,$product)
{ 
	    $types = $product->ProductAttributeVariableProduct->where('product_variant',1)->pluck('type')->toArray();
	    $parent = $product->ProductAssignedVariations;
        $var=[];
	    foreach ($request->all() as $key => $value) {
	    	  $var[$key] = $value;
	    }
          $variant_id = 0;
	      foreach($parent as $key => $value) {
	      	     $array = $value->hasVariationAttributes->pluck('attribute_id','type')->toArray();
	      	     if($array == $var){
	      	     	 $variant_id = $value->id;
	      	     }
	      	     
	      }

	      return $variant_id > 0 ? $variant_id : 0;
}

#=================================================================================================================



}
