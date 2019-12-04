<?php

namespace App\Models\Vendors;

use Illuminate\Database\Eloquent\Model;
use Auth;
class DiscountDeal extends Model
{
    

    public function Business()
    {
       return $this->belongsTo('App\VendorCategory','vendor_category_id');
    }

    public function vendor()
    {
       return $this->belongsTo('App\User','user_id');
    }


     public function chats()
    {
       return $this->hasOne('App\Models\Vendors\Chat','deal_id')->where(function($t){
          if(Auth::check() && Auth::user()->role == "user"){
            $t->where('user_id',Auth::user()->id);
          }else{
            $t->where('user_id',0);
          }
       })->where('deal_status',0);
    }


}
