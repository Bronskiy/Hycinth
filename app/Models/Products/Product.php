<?php

namespace App\Models\Products;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
     



     public function category()
     {
     	 return $this->belongsTo('App\Models\Products\ProductCategory','category_id');
     }

     public function subcategory()
     {
     	 return $this->belongsTo('App\Models\Products\ProductCategory','subcategory_id','id');
     }

     public function childcategory()
     {
     	 return $this->belongsTo('App\Models\Products\ProductCategory','childcategory_id','id');
     }


     public function variationAttributes()
     {
          return $this->hasMany('App\Models\Products\ProductAttribute','product_id','id')->where('parent',0);
     }

     public function HasInventory()
     {
          return $this->hasOne('App\Models\Products\ProductInventory','product_id','id');
     }

     public function ProductAssignedVariations()
     {
          return $this->hasMany('App\Models\Products\ProductAssignedVariation','product_id')->where('parent',0);
     }
}
