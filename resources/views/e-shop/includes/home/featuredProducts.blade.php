 <section class="featured-product-sec">
         <div class="container">
             <div class="sec-heading text-center">
                <h2>Featured PRODUCTS</h2>
            </div>
            <div class="featured-product-wrap">
                    <div class="owl-carousel owl-theme featured-product-slider">
                       
                     
<?php

$featuredProducts = \App\Models\Products\Product::where('create_status',1)->where('featured',1)->take(10)->get();
?>


@foreach($featuredProducts as $product)

<?php
$complete1 = $product->ProductAssignedVariations != null && $product->ProductAssignedVariations->count() > 0 ? 1 : 0;
$complete2 = $product->product_type == 0 && $product->price > 0 ? 1 : 0;
$complete = $product->product_type == 0 ? $complete2 : $complete1;
$type = $complete == 0 ? 'Comming Soon' : 'Hot';
$url = $complete == 1 ? url(route('shop.product.detail.page',$product->slug)) : 'javascript:void(0)';
$price = $product->productPrice();
?>


   <div class="item"> 
     <a href="{{$url}}" >                         
     <div class="featured-product-card">
        <figure class="f-product-img">
            <img src="{{$product->thumbnail != null ? url($product->thumbnail) : ''}}" alt="">
        </figure>
         <div class="f-product-detail">
             <h4>{{$product->name}}</h4>
             <div class="f-product-price text-center">
                 <h3 class="after-discount-price">${{custom_format($price['sale_price'],2)}} </h3>
                 <p class="original-price"><del>${{custom_format($price['price'],2)}}</del></p>
             </div>
         </div>
     </div>
    </a>
 </div>

 
@endforeach


           </div>
        </div>
     </div>
   </div>
</section>






