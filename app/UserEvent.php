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
    	'slug', 'title', 'description', 'start_date', 'end_date', 'location', 'latitude', 'longitude', 'event_type', 'categories'
    ];

    public function sluggable() {
        return [

            'slug' => [
                'source' => 'title'
            ]
        ];
    }
}
