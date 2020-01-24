<?php

namespace App\Models\Products;

use Illuminate\Database\Eloquent\Model;

class ProductVariation extends Model
{
 

// this Model is used for saving the all default variation by admin 
// that will be used for creating product attributes


#-----------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------

public function getWIthType($type)
{

	return $this->where('type',$type)->where('status',1)->get();
}

 


}
