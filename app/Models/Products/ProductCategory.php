<?php

namespace App\Models\Products;

use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;
use Cviebrock\EloquentSluggable\SluggableScopeHelpers;
class ProductCategory extends Model
{
    

    use Sluggable;
    use SluggableScopeHelpers;

    
    public function sluggable()
    {
        return [

            'slug' => [
                'source' => 'label'
            ]
        ];
    }



  public function categoryParent()
    {
       return $this->belongsTo($this,'parent');
    }

    public function categorySubparent()
    {
       return $this->belongsTo($this,'subparent');
    }

    public function subCategory()
    {
         return $this->hasMany($this,'parent')->where('parent','>',0)->where('subparent',0)->orderBy('sorting','ASC');
    }

    public function childCategory()
    {
         return $this->hasMany($this,'subparent')->where('parent','>',0)->where('subparent','>',0)->orderBy('sorting','ASC');
    }




















}
