<?php

namespace App\Models\Vendors;

use Illuminate\Database\Eloquent\Model;

class DiscountDeal extends Model
{
    

    public function Business()
    {
       return $this->belongsTo('App\VendorCategory','vendor_category_id');
    }
}
