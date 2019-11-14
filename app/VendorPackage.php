<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class VendorPackage extends Model
{
    protected $fillable = ['title', 'description', 'status', 'category_id', 'user_id', 'amount'];
}
