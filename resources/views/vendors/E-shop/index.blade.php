@extends('layouts.vendor')
@section('vendorContents')

                    


<div class="container-fluid">
    <div class="row">
       <div class="col-lg-12">
          <div class="card vendor-dash-card">
          <div class="card-header">My Store</div>
           <div class="card-body">
              <div class="row">
                      <div class="col-md-12">
                                <!-- <h4>{{$shop->name}} </h4>
                                @if($shop->logo !="")   
                                    <img src="{{url($shop->logo)}}" width="120">
                                @endif

                                <div>
                                  <a href="{{url(route('vendor.shop.index'))}}">Edit</a>
                                </div> -->
                                <div class="store_info_card">
                                <div class="row">
                                  <div class="col-lg-9 col-md-8">  
                                    <div class="store_info_content"> 
                                      <div class="store_info_header">
                                        <h3>Wedding Collection Store</h3>
                                        <div class="E-shop-status">
                                          <h3>Shop Status : <span class="ShopStatus">OPEN </span></h3>
                                        </div>
                                      </div>
                                      <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a normal distribution making it look like readable English.</p>
                                    </div>                               
                                  </div>
                                  <div class="col-lg-3 col-md-4">
                                    <div class="eshop_store_logo">
                                      <figure>
                                        <img src="/frontend/images/store-logo.png">
                                      </figure>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
<!-- 
                      <div class="col-md-12">
                          <h4>Product Categories</h4>
                        <div class="row"> 
                           @foreach($ShopCategory->parentCategory($shop->id,0) as $cate)
                                    <div class="col-lg-6 col-md-6">
                                      <div class="product-cate-list-head">
                                        <h3>{{$cate->label}}</h3>
                                      </div> 
                                       <ul class="shop-category-list">
                                            @foreach($ShopCategory->parentCategory($shop->id,$cate->id) as $sub) 
                                                <li>
                                                  <div class="product-cate-checkbox custom-checkbox">
                                                           
                                                             <label class="custom-control-label">{{$sub->label}}
                                                           </label>
                                                       </div>
                                                </li>
                                            @endforeach
                                       </ul>
                                     </div>

                           @endforeach
                          </div>

                      </div> -->

                      <div class="eshop_store_card">
                        <div class="eshop_card_head">
                          <h2>Product Categories</h2>
                        </div>
                        <div class="eshop_store_inn_card">
                          <div class="product-cate-list-head">
                              <h3>Men</h3>
                            </div>
                          <div class="eshop_product_category">
                            <ul class="selected-categories-list">
                              <li><p>Lorem Ipsum Dolor sit amet</p></li>
                              <li><p>Lorem Ipsum Dolor sit amet</p></li>
                              <li><p>Lorem Ipsum Dolor sit amet</p></li>
                              <li><p>Lorem Ipsum Dolor sit amet</p></li>
                              <li><p>Lorem Ipsum Dolor sit amet</p></li>
                              <li><p>Lorem Ipsum Dolor sit amet</p></li>
                            </ul>
                          </div>
                        </div>                          
                        </div>
                      </div>
               
           </div>
        </div>
     </div>
   </div>
</div>





























@endsection

@section('scripts')
<script src="{{url('/js/validations/imageShow.js')}}"></script>
<script type="text/javascript" src="{{url('/js/vendors/shop.js')}}"></script>
 










@endsection