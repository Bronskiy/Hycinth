<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;
use Cviebrock\EloquentSluggable\SluggableScopeHelpers;

class VendorCategory extends Model
{

     use Sluggable;
     use SluggableScopeHelpers;

     protected $fillable = [
        'parent', 'title', 'user_id', 'category_id', 'status', 'business_url', 'publish'
    ];
    
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

   

    public function faqs()
    {
       return $this->hasMany('App\FAQs','vendor_category_id','id');
    }

    
    public function VendorPackage()
    {
       return $this->hasMany('App\VendorPackage','vendor_category_id','id');
    }



   
    public function vendors()
    {
       return $this->belongsTo('App\User','user_id')->where('role','vendor');
    }



    public function basicInfo()
    {
       return $this->hasMany('App\VendorCategoryMetaData','vendor_category_id','id')
                   ->where('type','basic_information');
    }




    public function ImageGallery()
    {
       return $this->hasMany('App\VendorCategoryMetaData','vendor_category_id','id')
                   ->where('type','imageGallery');
    }



    public function VideoGallery()
    {
       return $this->hasMany('App\VendorCategoryMetaData','vendor_category_id','id')
                   ->where('type','videoGallery');
    }


    public function styles()
    {
       return $this->hasMany('App\VendorCategoryMetaData','vendor_category_id','id')
                   ->where('type','styles');
    }


     public function seasons()
    {
       return $this->hasMany('App\VendorCategoryMetaData','vendor_category_id','id')
                   ->where('type','seasons');
    }


    public function description()
    {
       return $this->hasOne('App\VendorCategoryMetaData','vendor_category_id','id')
                   ->where('type','description');
    }


     public function prohibtion()
    {
       return $this->hasOne('App\VendorCategoryMetaData','vendor_category_id','id')
                   ->where('type','prohibtion');
    }



    public function DealsDiscount()
    {
       return $this->hasMany('App\Models\Vendors\DiscountDeal','vendor_category_id','id');
    }



    public function VendorEvents()
    {
       return $this->hasMany('App\VendorEventGame','vendor_category_id','id');
    }




}
