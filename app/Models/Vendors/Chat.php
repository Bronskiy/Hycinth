<?php

namespace App\Models\Vendors;

use Illuminate\Database\Eloquent\Model;

class Chat extends Model
{
    


    public function deals()
    {
    	return $this->belongsTo('App\Models\Vendors\DiscountDeal','deal_id');
    }


    public function ChatMessages()
    {
    	return $this->hasMany('App\Models\Vendors\ChatMessage','chat_id');
    }


  
}
