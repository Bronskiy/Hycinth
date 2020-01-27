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
use App\Models\Products\ProductAssignedVariation;
class ProductFilterController extends Controller
{
   

    public $filePath = 'e-shop.modules.products.';
    public $include = 'e-shop.includes.products.';


#================================================================================
#================================================================================
#================================================================================


public function index(Request $request,$category_id)
{

// 	 foreach ($request->all() as $key => $value) {
// echo $key .':'.is_array($value);
// echo "<br>";
// 	 }


   $simpleIds =$this->getSimpleProductId($request,$category_id);
 $ids = $this->getProductIDWIthFilters($request,$category_id);
   $compineIDS = array_merge($simpleIds,$ids);
   $Product = Product::with('ProductAssignedVariations')
                      ->where('childcategory_id',$category_id)
                      ->where('create_status',1)
                      ->whereIn('id',$compineIDS)
                      ->paginate(20);
   $vv = view($this->include.'list')->with('products',$Product);
   return response()->json(['status' => 1,'htm' => $vv->render()]);
}


#================================================================================
#================================================================================
#================================================================================


public function getSimpleProductId($request,$category_id)
{
	 $product = Product::where('products.product_type',0)
	                   ->where('products.childcategory_id',$category_id)
	                   ->where('products.create_status',1);

                      if(!empty($request->price)){
		            		$price = explode('&', $request->price);
		            		$product->whereBetween('products.final_price',[$price[0],$price[1]]);
		            	 
		                         
		              }
		           return $product->pluck('id')
		                          ->toArray();
}



public function getProductIDWIthFilters($request,$category_id)
{
      $product =  Product::join('product_assigned_variations','product_assigned_variations.product_id','=','products.id')
           ->select('product_assigned_variations.*')
            ->where('products.childcategory_id',$category_id)
            ->where('products.create_status',1)
            ->where(function($t) use($request){

            	// if(!empty($request->price)){
            	// 	$price = explode('&', $request->price);
            	// 	$t->where('product_assigned_variations.price','>=',$price[0]);
            	// 	$t->where('product_assigned_variations.price','<=',$price[1]);
             //              foreach ($request as $key => $value) {
			          //   		if($key != 'price'){
			          //               $t->where('product_assigned_variations.type',$key);
			          //   		    $t->where('product_assigned_variations.attribute_id',1);
			          //   		}
		           //  	  }
            	// }else{
		           //  	foreach ($request as $key => $value) {
		           //  		if(is_array($value)){
		           //             $t->where('product_assigned_variations.type',$key);
		           //  		   $t->whereIn('product_assigned_variations.attribute_id',$value);
		           //  		}
		           //  	}
            		
            	// }


            });

            if(!empty($request->price)){
            		$price = explode('&', $request->price);
            		$product->whereBetween('product_assigned_variations.final_price',$price);
            		 
                         
            }

	        $pro = $product->where(function($t) use($request){
                  
                  $types = array_keys($request->all());

	            foreach ($request->all() as $key => $value) {
	        		if(is_array($value)){

	                   $t->orWhere('product_assigned_variations.type',$key);
	        		   $t->whereIn('product_assigned_variations.attribute_id',$value);
	        		}
		        }

	        });


            return $pro->where('products.product_type',1)
                ->where('products.price',0)
                ->where('products.create_status',1)
	            ->groupBy('product_assigned_variations.product_id')
	            ->pluck('product_assigned_variations.product_id')->toArray();
	 
}










}
