<?php

namespace App\Models\Vendors;

use Illuminate\Database\Eloquent\Model;

class CustomPackage extends Model
{
    
    public function category()
    {
       return $this->belongsTo('App\Category','category_id','id');
    }
}
