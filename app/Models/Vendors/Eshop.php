<?php

namespace App\Models\Vendors;

use Illuminate\Database\Eloquent\Model;

class Eshop extends Model
{
    




    public function shopCategories()
    {
    	 return $this->hasMany('App\Models\Shop\ShopCategory')->where('parent',0);
    }



    public function category()
    {
    	 return $this->belongsTo('App\Models\Products\ProductCategory');
    }






}
