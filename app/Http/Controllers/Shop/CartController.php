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
use App\Traits\ProductCart\AddCartItemTrait;
class CartController extends Controller
{
     use AddCartItemTrait;

public $filePath = 'e-shop.modules.cart.';
public $include = 'e-shop.includes.cart.';


#=====================================================================================================
#=====================================================================================================
#=====================================================================================================


public function index(Request $request)
{
	 // Cart::clear();
	return view($this->filePath.'index');
}



#=====================================================================================================
#=====================================================================================================
#=====================================================================================================

public function cartOperations(Request $request)
{
	$type = $request->type;
	 switch ($type) {
	 	case 'add':
	 		 return $this->addQty($request,1);
	 		break;
	 	case 'sub':
	 		return $this->addQty($request,0);
	 		break;
	    case 'remove':
	 		return $this->addQty($request,2);
	 		break;
	 	case 'list':
	 		return $this->listItemOfcart();
	 		break;
	 	
	 	default:
	 		# code...
	 		break;
	 }
}
#====================================================================================================
#====================================================================================================
#====================================================================================================

public function addQty($request,$val)
{
	  $rowId = $request->id;

	       $cart = Cart::get($rowId);
	  if($val == 2){

	  	Cart::remove($rowId);

	  }else{
		      $new = $val == 1 ? 1 : -1;
			    Cart::update($rowId,[
					'quantity' => $new
				]);
      }
        return  $this->listItemOfcart();


}

#====================================================================================================
#====================================================================================================
#====================================================================================================


public function listItemOfcart()
{

   $vv = view($this->include.'withoutLoginCart');
   $v = view($this->include.'totals');

   return [
        'status' => 1,
        'htm' => $vv->render(),
        'totals' => $v->render()
   ];
	
}

}
