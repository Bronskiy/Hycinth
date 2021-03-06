@extends('e-shop.layouts.layout')
@section('content')
 

 <!-- banner section starts here here -->
    <section class="inner-main-banner" style="background-image:url({{url('/e-shop/images/product-listing-banner-bg.png')}});">
        <div class="container">
            <div class="inner-banner-content text-center">
                <h1>Product Details</h1>
            </div>
        </div>
    </section>
    <section class="product-detail-sec">
      <div class="container">
          <!-- product detail card -->
          <div class="card mb-5">
      <div class="container-fliud">
        <div class="wrapper row">
          <div class="preview col-lg-6">
             <div class="product-slider-wrap">
               <div id="slider" class="flexslider">
          <ul class="slides">

            @foreach($product->ProductImages as $img)
             <li>
              <img src="{{url($img->image)}}" />
            </li>   
            @endforeach        
          </ul>
        </div>
        <div id="carousel" class="flexslider">
          <ul class="slides">
              @foreach($product->ProductImages as $img)
             <li>
              <img src="{{url($img->image)}}" />
            </li>   
            @endforeach       
          </ul>
        </div>
             </div>
            
          </div>
          <div class="details col-lg-6">
            <h3 class="product-title">{{$product->name}}</h3>


            <div class="price-rating-wrap">
            
            <h4 class="price"><span>{!!$product->productPrice()['html']!!}</span></h4>  

            <div class="rating">
                         <div class="stars">
                           <span class="fa fa-star checked"></span>
                           <span class="fa fa-star checked"></span>
                           <span class="fa fa-star checked"></span>
                           <span class="fa fa-star"></span>
                           <span class="fa fa-star"></span>
                         </div>
                         <span class="review-no">41 reviews</span>
                       </div>
            </div>
            
            <p class="product-description">{{$product->short_description}}</p>

            <p class="vote"><strong>91%</strong> of buyers enjoyed this product! <strong>(87 votes)</strong></p>
        <form id="ADDToCART" data-action="{{url(route('shop.ajax.addToCart',$product->id))}}">
         <!--  @foreach($product->ProductAttributeVariableProduct as $attribute)
 
            <h5 class="sizes">{{$attribute->type}}: <label></label>
              <ul class="ctm-type-{{$attribute->type}}">
              @foreach($attribute->childAttributes as $k => $item)
                      <?php $attributes = json_decode($item->variation->data);  ?>
                        @if(!empty($attributes->color))
                           <li>
                             <div class="color-btn">
                                <input 
                                  type="radio" 
                                  name="{{$attribute->type}}" 
                                  value="{{$item->variation->id}}" 
                                  id="filter-{{$attribute->type}}-{{$item->id}}"
                                  {{$k == 0 ? 'checked' : ''}}
                                >
                                <label class="color" for="filter-{{$attribute->type}}-{{$item->id}}" 
                                  style="background:{{$attributes->color}}"></label>
                                </div>
                           </li>
                        @else
                      

                          <li>
                            <div class="size-btn" style="position:relative;">
                              <input 
                              type="radio" 
                              name="{{$attribute->type}}" 
                              value="{{$item->variation->id}}" 
                              id="filter-{{$attribute->type}}-{{$item->id}}"
                               {{$k == 0 ? 'checked' : ''}}
                              >
                              <label for="filter-{{$attribute->type}}-{{$item->id}}">{{$item->variation->name}}</label>
                            </div>
                         </li>

                      @endif
              @endforeach
            </ul>
            </h5>
          @endforeach -->

          <div id="ProductDetailFilter">
               @include('e-shop.includes.products.addToCartForm')
          </div>
           <!--  <h5 class="colors">colors:
              <span class="color orange not-available" data-toggle="tooltip" title="Not In store"></span>
              <span class="color green"></span>
              <span class="color blue"></span>
            </h5> -->

            <div class="action btn-wrap mt-3">
              <button class="cstm-btn solid-btn cartButton" type="submit">add to cart</button>
              <button class="cstm-wishlist-btn" type="button"><span class="fa fa-heart"></span></button>
              <div id="errorMessageBox"></div>
            </div>

          </form>
          </div>
        </div>
      </div>
    </div>
         <!--  End -->
      </div>
    </section>
    <section class="product-description-sec">
      <div class="container">
      <div class="product-des-container">
        <ul class="nav nav-tabs row" role="tablist">
          <li class="nav-item col-6">
            <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab">Product Description</a>
          </li>
          <li class="nav-item col-6">
            <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab">Second Panel</a>
          </li>
          
        </ul><!-- Tab panes -->
        <div class="tab-content">
          <div class="tab-pane active" id="tabs-1" role="tabpanel">
            <div class="description-content">
              <h3>Product Description</h3>
               {!!$product->description!!} 
            </div>
          </div>
          <div class="tab-pane" id="tabs-2" role="tabpanel">
            <div class="description-content">
              <div class="row">
                <div class="col-lg-6">
                  <figure class="product-specification-img">
                    <img src="{{url($product->thumbnail)}}">
                  </figure>
                </div>
                <div class="col-lg-6">
                  <div class="specification-head">
                    <h3>Specification</h3>
                  </div>
              <table class="table specification-table" id="tblProductSpecifics">
                     <tbody>
                  <?php
                      $specification = $product->ProductAttributeVariableProduct->where('product_view',1);
 
                  ?>                    
 
                        @foreach($specification as $attribute)

                         <tr>
                              <td class="ItemSpecificName">{{$attribute->type}}</td>
                                
                                <td class="ItemSpecificValue">
                                          @foreach($attribute->childAttributes as $sp)
                                                 <span>{{$sp->variation->name}}</span>
                                          @endforeach
                                </td>
                            </tr>
                          
                        @endforeach
                    </tbody>
                    </table>
                  </div>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    </section>

   <!--  reviews and rating sec starts here -->
<section class="reviewsAndRating-sec">
  <div class="container">
    <div class="sec-heading text-center">
                <h2>Reviews</h2>
            </div>
<div class="cstm-rating-wrap">
   <div class="rating-head">
   <span class="heading">User Rating</span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star"></span>
<p>4.1 average based on 254 reviews.</p>
</div>
<hr style="border:3px solid #f1f1f1">

<div class="rating-content">
  <div class="side">
    <div>5 star</div>
  </div>
  <div class="middle">
    <div class="bar-container">
      <div class="bar-5"></div>
    </div>
  </div>
  <div class="side right">
    <div>150</div>
  </div>
  <div class="side">
    <div>4 star</div>
  </div>
  <div class="middle">
    <div class="bar-container">
      <div class="bar-4"></div>
    </div>
  </div>
  <div class="side right">
    <div>63</div>
  </div>
  <div class="side">
    <div>3 star</div>
  </div>
  <div class="middle">
    <div class="bar-container">
      <div class="bar-3"></div>
    </div>
  </div>
  <div class="side right">
    <div>15</div>
  </div>
  <div class="side">
    <div>2 star</div>
  </div>
  <div class="middle">
    <div class="bar-container">
      <div class="bar-2"></div>
    </div>
  </div>
  <div class="side right">
    <div>6</div>
  </div>
  <div class="side">
    <div>1 star</div>
  </div>
  <div class="middle">
    <div class="bar-container">
      <div class="bar-1"></div>
    </div>
  </div>
  <div class="side right">
    <div>20</div>
  </div>
</div>
</div>

<div class="customers-reviws-wrap">
  <div class="review-card">
    <div class="testimonial">
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu sem tempor, varius quam at, luctus dui. Mauris magna metus, dapibus nec turpis vel, semper malesuada ante.</p>
                </div>
                <div class="media">
                  <figure class="media-left client-img">
                    <img src="images/client-img-1.png" alt="">                   
                  </figure>
                  <div class="media-body">
                    <div class="overview">
                      <div class="name"><b>Michael Holz</b></div>
                      <div class="details">Web Developer / DevCorp</div>                      
                      <div class="star-rating">
                        <ul class="list-inline">
                          <li class="list-inline-item"><i class="fa fa-star"></i></li>
                          <li class="list-inline-item"><i class="fa fa-star"></i></li>
                          <li class="list-inline-item"><i class="fa fa-star"></i></li>
                          <li class="list-inline-item"><i class="fa fa-star"></i></li>
                          <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                        </ul>
                      </div>
                    </div>                    
                  </div>
                </div>
  </div>

   <div class="review-card">
    <div class="testimonial">
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu sem tempor, varius quam at, luctus dui. Mauris magna metus, dapibus nec turpis vel, semper malesuada ante.</p>
                </div>
                <div class="media">
                  <figure class="media-left client-img">
                    <img src="images/client-img-1.png" alt="">                   
                  </figure>
                  <div class="media-body">
                    <div class="overview">
                      <div class="name"><b>Michael Holz</b></div>
                      <div class="details">Web Developer / DevCorp</div>                      
                      <div class="star-rating">
                        <ul class="list-inline">
                          <li class="list-inline-item"><i class="fa fa-star"></i></li>
                          <li class="list-inline-item"><i class="fa fa-star"></i></li>
                          <li class="list-inline-item"><i class="fa fa-star"></i></li>
                          <li class="list-inline-item"><i class="fa fa-star"></i></li>
                          <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                        </ul>
                      </div>
                    </div>                    
                  </div>
                </div>
  </div>
</div>
</div>
</section>
   <!-- ========================================== -->

  <!--related products starts here-->
     <section class="featured-product-sec related-product-sec">
         <div class="container">
             <div class="sec-heading text-center">
                <h2>RELATED PRODUCTS</h2>
            </div>
            <div class="featured-product-wrap">
                    <div class="owl-carousel owl-theme featured-product-slider">
                        <div class="item">                          
                         <div class="featured-product-card">
                            <figure class="f-product-img">
                                <img src="images/f-product-img1.png">
                            </figure>
                             <div class="f-product-detail">
                                 <h4>Personalized Extra-Large Cotton Canvas Fabric Beach Tote Bag </h4>
                                 <div class="f-product-price text-center">
                                     <h3 class="after-discount-price">$30.00 </h3>
                                     <p class="original-price"><del>$50.00</del></p>
                                 </div>
                             </div>
                         </div>
                       </div>
                        
                       
                         
                       
                     </div>
                    
                </div>
            
         </div>
     </section>
     <!--Featured section ends here-->












@endsection



@section('jscript')
<script type="text/javascript" src="{{url('/e-shop/js/products/cart.js')}}"></script>
<script type="text/javascript">
  

</script>

@endsection