
@foreach($products as $product)

<?php
$complete1 = $product->ProductAssignedVariations != null && $product->ProductAssignedVariations->count() > 0 ? 1 : 0;
$complete2 = $product->product_type == 0 && $product->price > 0 ? 1 : 0;
$complete = $product->product_type == 0 ? $complete2 : $complete1;
$type = $complete == 0 ? 'Comming Soon' : 'Hot';
$url = $complete == 1 ? url(route('shop.product.detail.page',$product->slug)) : 'javascript:void(0)';

?>



 <div class="col-lg-4 col-md-6">

          <a href="{{$url}}" >
          	<div class="product-card">
              <div class="badge">{{$type}}</div>
              <div class="product-tumb">
                  <img src="{{$product->thumbnail != null ? url($product->thumbnail) : ''}}" alt="">
              </div>
              <div class="product-details">                              
                  <h4>{{$product->name}}</h4>
                  <p>{{$product->short_description}}</p>
                  <div class="product-bottom-details">
                  	@php $price = $product->productPrice(); @endphp
                       {!!$price['html']!!}
                      <div class="product-links">
                          <a href=""><i class="fa fa-heart"></i></a>
                          <a href=""><i class="fa fa-shopping-cart"></i></a>
                      </div>
                  </div>
              </div>
          </a>
      </div>
 </div>









@endforeach







