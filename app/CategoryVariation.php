<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CategoryVariation extends Model
{
    protected $fillable = ['parent', 'category_id', 'variant_id', 'type' ];





     # category variants CategoryMaterials
    public function Amenity()
    {
        return $this->belongsTo('App\Amenity','variant_id')->where('type','amenity');
    }


     # category variants CategoryMaterials
    public function Games()
    {
        return $this->belongsTo('App\Amenity','variant_id')->where('type','game');
    }





     # category variants CategoryMaterials
    public function Event()
    {
        return $this->belongsTo('App\Event','variant_id');
    }


      # category variants CategoryMaterials
    public function season()
    {
        return $this->belongsTo('App\Season','variant_id');
    }





}