<?php

namespace App\Models\Shop;

use Illuminate\Database\Eloquent\Model;

class ShopCartItems extends Model
{
   



#========================================================================================================


	public function product()
	{
		return $this->belongsTo('App\Models\Products\Product','product_id','id');
	}





    public function choosedVariation()
	{
		return $this->belongsTo('App\Models\Products\ProductAssignedVariation','variant_id','id')->where('parent',0);
	}








}
