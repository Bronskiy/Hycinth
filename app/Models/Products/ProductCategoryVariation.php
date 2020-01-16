<?php

namespace App\Models\Products;

use Illuminate\Database\Eloquent\Model;

class ProductCategoryVariation extends Model
{
   


   public function hasSameValue($category_id,$type,$value,$return=null)
   {
   	   $variation = $this->where('type',$type)->where('category_id',$category_id)->where('value',$value);

   	   if($return == null){
   	   	  return $variation->first();
   	   }else{
   	   	   return $variation->count() > 0 ? $return : '';
   	   }
   }
}
