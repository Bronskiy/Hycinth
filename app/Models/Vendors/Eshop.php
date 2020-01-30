<?php

namespace App\Models\Vendors;

use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;
use Cviebrock\EloquentSluggable\SluggableScopeHelpers;

class Eshop extends Model
{
    
   use Sluggable;
    use SluggableScopeHelpers;

    
    public function sluggable()
    {
        return [

            'slug' => [
                'source' => 'name'
            ]
        ];
    }




    public function shopCategories()
    {
    	 return $this->hasMany('App\Models\Shop\ShopCategory')->where('parent',0);
    }



    public function category()
    {
    	 return $this->belongsTo('App\Models\Products\ProductCategory');
    }



  



}
