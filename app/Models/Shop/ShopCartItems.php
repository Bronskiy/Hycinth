<?php

namespace App\Models\Shop;

use Illuminate\Database\Eloquent\Model;

class ShopCartItems extends Model
{
   
 protected $fillable = [
  'payment_status',
  'type',
  'orderID',
  'order_id'
];

#========================================================================================================


	public function product()
	{
		return $this->belongsTo('App\Models\Products\Product','product_id','id');
	}





    public function choosedVariation()
	{
		return $this->belongsTo('App\Models\Products\ProductAssignedVariation','variant_id','id')->where('parent',0);
	}


   public function getOrderOfSingleVendor()
   {
   	    return $this->hasMany($this,'vendor_id','vendor_id');
   }
   

    public function vendor()
    {
       return $this->belongsTo('App\User','vendor_id','id');
    }




}
