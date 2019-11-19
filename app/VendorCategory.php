<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;
use Cviebrock\EloquentSluggable\SluggableScopeHelpers;

class VendorCategory extends Model
{

     use Sluggable;
     use SluggableScopeHelpers;
    
        public function sluggable()
        {
            return [

                'business_url' => [
                    'source' => 'title'
                ]
            ];
        }

    public function category()
    {
       return $this->belongsTo('App\Category','category_id','id');
    }


    public function subcategory()
    {
       return $this->hasMany('App\VendorCategory','parent');
    }





   
    public function vendors()
    {
       return $this->belongsTo('App\User','user_id')->where('role','vendor');
    }



    public function basicInfo()
    {
       return $this->hasMany('App\VendorCategoryMetaData','category_id','category_id')->where('type','basic_information');
    }



}
