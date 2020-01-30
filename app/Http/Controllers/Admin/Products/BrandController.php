<?php

namespace App\Http\Controllers\Admin\Products;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Products\Brand;

class BrandController extends Controller
{
    public $path = 'admin.products.brands.';
    public function index(){
        $type = 'Brands';
    	return view($this->path.'index',[
            'title' => $type,
            'addLink' => route('admin.products.create.brands'),
            'ajaxLink' => url(route('admin.products.brandsAjax')),
        ]);
    }



public function create()
{ return 1;
  $textboxs = $this->varaitionFields($type);
    return view($this->path.'add',[
        'title' => $type,
        'textboxs' => $textboxs,
        'type' => $type,
        'addLink' => route('admin.products.variations',$type),
        'ajaxLink' => url(route('admin.products.variationAjax',$type)),
    ]);
}


#----------------------------------------------------------------------------------------------------------------
# Product Variations
#----------------------------------------------------------------------------------------------------------------

    public function Ajax()
	{
        return 1;
		$events = ProductVariation::select(['id','name','type','status'])->where('type',$type)->get();

		return datatables()->of($events)
		->addColumn('action', function ($t) {
		return  $this->Actions($t);
		})
		->editColumn('status',function($t){
		return $t->status == 1 ? 'Active' : 'In-Active';
		})
		->make(true);
	}


	/*__________________________________________________________________________________________
	|
	|  Next Function starts
	|___________________________________________________________________________________________
	*/
    

    public function Actions($data)
    {
            $text  ='<div class="btn-group">';
            $text .='<button type="button" class="btn btn-primary">Action</button>';
            $text .='<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-expanded="false">';
            $text .='<span class="caret"></span>';
            $text .='<span class="sr-only">Toggle Dropdown</span>';
            $text .='</button>';
            $text .='<div class="dropdown-menu" role="menu" x-placement="top-start" style="position: absolute; transform: translate3d(67px, -165px, 0px); top: 0px; left: 0px; will-change: transform;">';

            $text .='<a href="'.route('admin.products.variation.edit',[$data->type,$data->id]).'" class="dropdown-item">Edit</a>';
            $text .='<div class="dropdown-divider"></div>';
            $status=$data->status == 0 ? 'Active' : 'In-Active';
            $text .='<a href="'.route('event_status',$data->type).'" class="dropdown-item">'.$status.'</a>';

            $text .='</div>';
            $text .='</div>';

            return $text;
    }
}
