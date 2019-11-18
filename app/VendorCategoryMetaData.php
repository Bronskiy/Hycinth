<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class VendorCategoryMetaData extends Model
{
    
    protected $fillable = [ 'parent', 'key', 'type', 'keyValue', 'user_id', 'category_id' ];
}
