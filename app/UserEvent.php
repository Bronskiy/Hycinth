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
    	'slug', 'title', 'user_id', 'description', 'start_date', 'end_date', 'min_person', 'max_person', 'location', 'latitude', 'longitude', 'event_type', 'status'
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
}
