<?php

namespace App\Models\Products;

use Illuminate\Database\Eloquent\Model;

class ProductAssignedVariation extends Model
{
    





    public function hasVariationAttributes()
    {
        return $this->hasMany($this,'parent');
    }



    public function inventoryWithVariation()
    {
    	return $this->hasOne('App\Models\Products\ProductInventory','variation_id');
    }
}
