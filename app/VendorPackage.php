<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;
use Cviebrock\EloquentSluggable\SluggableScopeHelpers;

class VendorPackage extends Model
{
	use Sluggable;
    use SluggableScopeHelpers;

    protected $fillable = ['title', 'slug', 'description', 'no_of_hours', 'no_of_days', 'menus',
    'status', 'category_id', 'user_id', 'price', 'price_type', 'min_person', 'max_person','vendor_category_id'];

    public function sluggable() {
        return [

            'slug' => [
                'source' => 'title'
            ]
        ];
    }

    public function package_addons() {
       return $this->hasMany('App\PackageMetaData', 'package_id')->where('type', 'addons');
    }

    public function amenities() {
       return $this->hasMany('App\PackageMetaData', 'package_id')->where('type', 'amenities');
    }
    public function events() {
       return $this->hasMany('App\PackageMetaData', 'package_id')->where('type', 'events');
    }

 
    
}
