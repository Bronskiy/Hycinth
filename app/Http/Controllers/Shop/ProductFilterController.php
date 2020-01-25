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
class ProductFilterController extends Controller
{
   

    public $filePath = 'e-shop.modules.products.';
    public $include = 'e-shop.includes.products.';


#================================================================================
#================================================================================
#================================================================================


	public function index(Request $request,$category_id)
	{

      $Product = Product::where('childcategory_id',$category_id)
                          ->where('create_status',1)
                          ->paginate(20);
       $vv = view($this->include.'list')->with('products',$Product);

        return response()->json(['status' => 1,'htm' => $vv->render()]);
	}
















}
