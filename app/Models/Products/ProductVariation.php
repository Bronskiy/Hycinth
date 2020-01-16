<?php

namespace App\Models\Products;

use Illuminate\Database\Eloquent\Model;

class ProductVariation extends Model
{
   

#-----------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------

public function getWIthType($type)
{

	return $this->where('type',$type)->where('status',1)->get();
}



}
