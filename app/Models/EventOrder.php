<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Vendors\DiscountDeal;
class EventOrder extends Model
{
 protected $fillable = [   
                'payment_type',
                'payment_status',
                'pyayment_data',
                'type',
                'paymentDetails',
                'OrderID',
                'order_id'
            ];

    public function deal()
    {
    	return $this->belongsTo('App\Models\Vendors\DiscountDeal');
    }



    public function order()
    {
        return $this->belongsTo('App\Models\Order');
    }




     public function package()
    {
    	return $this->belongsTo('App\VendorPackage');
    }


     public function event()
    {
    	return $this->belongsTo('App\UserEvent');
    }


     public function category()
    {
    	return $this->belongsTo('App\Category');
    }


     public function user()
    {
    	return $this->belongsTo('App\User');
    }

     public function vendor()
    {
    	return $this->belongsTo('App\VendorCategory','vendor_id');
    }
}
