<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;
use Cviebrock\EloquentSluggable\SluggableScopeHelpers;

class UserEvent extends Model
{
	use Sluggable;
    use SluggableScopeHelpers;

    protected $fillable = [
    	  'slug', 
          'title',
          'user_id',
          'description',
          'start_date',
          'end_date',
          'min_person',
          'max_person',
          'location',
          'latitude', 
          'longitude', 
          'event_type',
          'status',
          'ideas',
          'notepad',
          'colour',
          'seasons',
          'start_time',
          'end_time',
          'long_description',
          'event_picture'
    ];

    public function sluggable() {
        return [

            'slug' => [
                'source' => 'title'
            ]
        ];
    }

    public function eventCategories() {
        return $this->hasMany('App\UserEventMetaData', 'event_id')->where('key', 'category_id');
    }

    public function order() {
        return $this->hasMany('App\Models\Order', 'event_id');
    }


    public function eventType() {
        return $this->belongsTo('App\Event', 'event_type');
    }
}
