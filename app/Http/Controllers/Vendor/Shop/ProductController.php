<?php

namespace App\Http\Controllers\Vendor\Shop;

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

public $filePath = 'vendors.E-shop.products.';


#=====================================================================================
#  index 
#=====================================================================================

public function index($value='')
{
	 return view($this->filePath.'index');
}




#=====================================================================================
#  index 
#=====================================================================================

public function create($value='')
{
	 return $this->createNewOne();
	 
}


#=====================================================================================
#  index 
#=====================================================================================

public function edit($id)
{    

    $shop = Auth::user()->shop;
    $ShopCategory = new ShopCategory;
    $product = Product::with(
    	'ProductAssignedVariations',
    	'ProductAssignedVariations.inventoryWithVariation',
    	'subcategory.ProductVariations',
    	'subcategory.ProductVariations.variationTypes',
    	'variationAttributes'
    )->where('user_id',Auth::user()->id)->where('id',$id);
    return $product->first();
    if($product->count() == 0){
    	return redirect()->route('vendor.shop.products.create');
    }
    $category = $ShopCategory->parentCategory($shop->id,0);
    

    return view($this->filePath.'add')
              ->with('shop',$shop)
              ->with('category',$category)
              ->with('ShopCategory',$ShopCategory)
              ->with('product',$product->first());
}



#=====================================================================================
#  create new product
#=====================================================================================

public function createNewOne()
{
	$product = Product::where('user_id',Auth::user()->id)->where('create_status',0)
	->where('shop_id',Auth::user()->shop->id);
   if($product->count() > 0){
		$product_id = $product->first()->id;
	}else{
		$p = new Product;
		$p->user_id = Auth::user()->id;
		$p->shop_id =Auth::user()->shop->id;
		$p->save();
        $product_id = $p->id;
	}
   
   

   return redirect()->route('vendor.shop.products.edit',$product_id);
}



#=====================================================================================
#  create new product
#=====================================================================================

public function saveCategory(Request $request,$id)
{
   $v = \Validator::make($request->all(),[
          'category_id' => 'required',
          'subcategory_id' => 'required',
          'childcategory_id' => 'required',
   ]);

   $product = Product::where('user_id',Auth::user()->id)
                     ->where('id',$id)
                     ->where('shop_id',Auth::user()->shop->id);
 
   if($product->count() > 0){
	    $p = $product->first();
	    $p->category_id =$request->category_id;
	    $p->subcategory_id =$request->subcategory_id;
	    $p->childcategory_id =$request->childcategory_id;
	    $p->save();

   return response()->json(['status' => 1]);
   }




}


#------------------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------------------

public function ajaxCategory(Request $request)
{     
	  $shop = Auth::user()->shop;
      $ShopCategory = new ShopCategory;
       if($request->parent > 0){

	      $category = $ShopCategory->parentCategory($shop->id,$request->parent);

       }elseif($request->subparent > 0){
            $category = ProductCategory::where('subparent',$request->subparent)->where('status',1)->orderBy('label','ASC')->get();

       }

       if(!empty($category)){
       	     $text ='<option value="">select</option>';
       	  foreach ($category as $key => $cate) {
       	  	 $text .='<option value="'.$cate->id.'">'.$cate->label.'</option>';
       	  }

       	  return response()->json($text);
       }
	 
}



}
