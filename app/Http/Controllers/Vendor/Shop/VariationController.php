<?php

namespace App\Http\Controllers\Vendor\Shop;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Products\Product;
use Auth;
use App\Models\Vendors\Eshop;
use App\Models\Products\ProductCategory;
use App\Models\Shop\ShopCategory;
use App\Models\Products\ProductAttribute;
use App\Models\Products\ProductInventory;
use App\Traits\ProductAttributes\Attributes;
class VariationController extends Controller
{

use Attributes;
 
#===================================================================================================
#===================================================================================================
#===================================================================================================

  public function types(Request $request,$product_id)
  {
  	 $product = Product::find($product_id);
     $vv = view('vendors.E-shop.products.variationBoxes.attributesAccordons')
	     ->with('product',$product)
	     ->with('type',$request->type)
	     ->with('variationType',$request->variationType);

     return response()->json($vv->render());

  }



#===================================================================================================
#===================================================================================================
#===================================================================================================


public function saveAttributes(Request $request,$product_id)
{  
	$product = Product::find($product_id);

	 $this->saveAttributeTrait($request,$product);
		  $vv = view('vendors.E-shop.products.variationBoxes.attribute.list')
	     ->with('product',$product);
         return response()->json(['status' => 1, 'htm' => $vv->render()]);
   
}




}
