<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PackageMetaData extends Model
{
        protected $fillable = ['parent', 'package_id', 'category_id', 'user_id', 'type', 'key', 'key_value'];

}
