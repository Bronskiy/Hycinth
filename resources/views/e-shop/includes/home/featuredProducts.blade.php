 <section class="featured-product-sec">
         <div class="container">
             <div class="sec-heading text-center wow bounceInRight" data-wow-delay=".35s">
                <h2>FEATURED PRODUCTS</h2>
            </div>
            <div class="featured-product-wrap wow bounceInUp" data-wow-delay=".40s">
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
                         <div class="product-card">
                            <div class="badge">Featured</div>
                             <a href="{{$url}}" class="product-tumb">
                                  <img src="{{$product->thumbnail != null ? url($product->thumbnail) : ''}}" alt="">
                               
                             </a>
                            <div class="product-details">
                                <span class="product-catagory">{{$product->category->label}} | {{$product->subcategory->label}} | {{$product->childcategory->label}}</span>
                                <h4>
                                    <a href="{{$url}}">{{ $product->name }}</a>
                                </h4>
                                <p>{!!$product->short_description!!}</p>
                                <div class="product-bottom-details">
                                        @php $price = $product->productPrice(); @endphp
                                          {!!$price['html']!!}
                                            <div class="product-links">
                                                <a href=""><i class="fa fa-heart"></i></a>
                                                <a href="{{$url}}"><i class="fa fa-shopping-cart"></i></a>
                                            </div>
                                </div>
                            </div>
                        </div>
 </div>

 
@endforeach


           </div>
        </div>
     </div>
   </div>
</section>






