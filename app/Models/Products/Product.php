<?php

namespace App\Models\Products;
use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;
use Cviebrock\EloquentSluggable\SluggableScopeHelpers;
use App\Models\Products\ProductAssignedVariation;
class Product extends Model
{
     use Sluggable;
    use SluggableScopeHelpers;

    
    public function sluggable()
    {
        return [

            'slug' => [
                'source' => 'name'
            ]
        ];
    }



    public function productPrice()
    {    $arr = [];
        $product = $this;
        if($this->product_type == 0){
           $arr['price'] = ($this->price);
           $arr['sale_price'] = ($this->price - $product->sale_price);
           $sale = $product->sale_price;

        }else{

             if($product->ProductAssignedVariations != null && $product->ProductAssignedVariations->count() > 0){
                $variantion = $product->ProductAssignedVariations->first();
                $price = $variantion->price;
                $sale = $variantion->sale_price;
                $arr['price'] = ($price);
                $arr['sale_price'] = ($price - $sale);             
             }
             
        }

        $text  = '<div class="product-price">';
        if($sale > 0){
           $text .='<small>$'.custom_format($arr['price'],2).'</small>';
        }
      
        $text .='$'.custom_format($arr['sale_price'],2).'</div>';

        $arr['html'] = $text;

        return $arr;
    }




     public function category()
     {
     	 return $this->belongsTo('App\Models\Products\ProductCategory','category_id');
     }

     public function subcategory()
     {
     	 return $this->belongsTo('App\Models\Products\ProductCategory','subcategory_id','id');
     }

     public function childcategory()
     {
     	 return $this->belongsTo('App\Models\Products\ProductCategory','childcategory_id','id');
     }


     public function variationAttributes()
     {
          return $this->hasMany('App\Models\Products\ProductAttribute','product_id','id')->where('parent',0);
     }


     public function HasInventory()
     {
          return $this->hasOne('App\Models\Products\ProductInventory','product_id','id');
     }


     public function ProductImages()
     {
          return $this->hasMany('App\Models\Products\ProductImage','product_id','id');
     }

     public function ProductAssignedVariations()
     {
          return $this->hasMany('App\Models\Products\ProductAssignedVariation','product_id')->where('parent',0);
     }



     public function ProductAttributeVariableProduct()
     {
         return $this->hasMany('App\Models\Products\ProductAttribute','product_id','id')->where('parent',0)->where('product_variant',1);
     }


     public function ProductAttributeVariableVisibles()
     {
         return $this->hasMany('App\Models\Products\ProductAttribute','product_id','id')
                     ->where('parent',0)
                     ->where('product_view',1);
     }

#=============================================================================================================================================

    public function cartOptions()
    {
        $types = $this->getVariationTypes();
        $typeArray = [];
        foreach ($types as $key => $type) {
                 $ProductAttribute = ProductAssignedVariation::where('type',$type)
                                                             ->where('product_id',$this->id)
                                                             ->groupBy('attribute_id')
                                                             ->pluck('attribute_id')
                                                             ->toArray();
                 $typeArray[$type] = $ProductAttribute;
        }

        return $typeArray;
    }



  #============================================================================================================================================


  public function getVariationTypes()
  {
      return $this->hasMany('App\Models\Products\ProductAssignedVariation','product_id')
                  ->where('parent','>',0)
                  ->groupBy('type')
                  ->pluck('type');
  }












}
