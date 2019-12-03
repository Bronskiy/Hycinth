<?php

namespace App\Models\Vendors;

use Illuminate\Database\Eloquent\Model;

class ChatMessage extends Model
{
    


    public function sender()
    {
    	return $this->belongsTo('App\User','sender_id');
    }

    public function receiver()
    {
    	return $this->belongsTo('App\User','receiver_id');
    }
}
