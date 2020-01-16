<?php

namespace App\Http\Controllers\Admin\Products;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Products\Variation;
class VariationController extends Controller
{
 
public $path = 'admin.products.variations.';
public $folder = 'images/products/categories/';



#------------------------------------------------------------------------------------
#  index
#------------------------------------------------------------------------------------

public function index()
{

	$Variation = Variation::get();
	return view($this->path.'new',[
        'title' => 'Variation',
        'variations' => $Variation
          
	]);
}

#------------------------------------------------------------------------------------
#  store
#------------------------------------------------------------------------------------

public function store(Request $request)
{
	$this->validate($request,[
        'name' => 'required|unique:variations'
	]);
     
     $v =new Variation;
     $v->name = trim($request->name);
     $v->status =1;
     $v->save();
     return redirect()->back()->with('messages','New variation is saved');

}





}
