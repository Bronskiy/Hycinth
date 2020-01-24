

<h4 class="head text-center">Product Variations</h4>
<input type="hidden" 
id="vendor.shop.variations.checkSkU" 
value="{{url(route('vendor.shop.variations.checkSkU'))}}?type={{$product->product_type}}&"
>
 <div class="row">
    @include('vendors.E-shop.products.variationBoxes.variation.list')	
 </div>
   









