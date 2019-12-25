@if(Auth::check() && Auth::user()->role == 'user') @if(empty($CartItems))

 
        <h4>Your Cart is Empty.</h4>
 

@endif 


@foreach($CartItems as $item)

 <div class="row no-gutters">
                <div class="col-lg-2">
                  <div class="cart-col-wrap">
                     
                    <div class="car-col-body">
                      <figure class="cart-tab-img">
                        <img src="{{asset($item->event->event_picture)}}">
                      </figure>
                    </div>

                  </div>
                </div>
                <div class="col-lg-5">
                  <div class="cart-col-wrap">
                                      
                    <div class="car-col-body">
                      <a href="javascript:void(0);" class="cart-item-link">{{$item->event->title}}</a>
                      <div class="cart-item-des">
                        <p class="color-highlight">Package: <strong>{{$item->package->title}}</strong></p>
                          <a href="javascrtpt:void(0);" data-toggle="tooltip" title="Create Event" class="icon-btn add-pkg-icon" data-original-title="Get Deal"><i class="fas fa-plus"></i></a>                   
                         
                        <div class="vendor-del-rating right-content">
                        <p>Vendor: <strong>{{$item->vendor->title}}</strong></p>
                         <ul class="inner-list rating-stars">
                              <li><a href="javascript:void(0);"><i class="fas fa-star"></i></a></li>
                              <li><a href="javascript:void(0);"><i class="fas fa-star"></i></a></li>
                              <li><a href="javascript:void(0);"><i class="fas fa-star"></i></a></li>
                              <li><a href="javascript:void(0);"><i class="fas fa-star"></i></a></li>
                              <li><a href="javascript:void(0);"><i class="far fa-star"></i></a>
                              </li>
                          </ul>
                        </div>
                        
              
              
           

                          <div class="cart-price-line">
                           <span class="off-price"> ${{custom_format($item->discounted_price,2)}} </span> 
                                 @if($item->discounted_price < $item->package->price && $item->deal != null && $item->deal->count() > 0) 
                                    <del class="main-price">${{custom_format($item->package->price,2)}}</del> 
                                  @endif
                          


                  @if($item->deal != null && $item->deal->count() > 0)
                       
                         
                        <p> {{$item->deal->deal_off_type == 0 ? $item->deal->amount.'%' : '$'.custom_format($item->deal->amount,2)}} Off <a href="javascript:void(0);" class="demo-app"> {{$item->deal->title}} Deal Applied 
                            <i class="fas fa-info-circle"></i></a></p> 
                  @endif




                          </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-lg-3">
                  <div class="cart-col-wrap">
                                      
                    <div class="car-col-body">
                        <ul class="cart-addon-listing">
                          <li>IceCream: $20</li>
                          <li>IceCream: $20</li>
                        </ul>
                    </div>
                  </div>
                </div>
                <div class="col-lg-2">
                  <div class="cart-col-wrap">
                     <div class="car-col-body">
                       <div class="action-btn-wrap">

                        <form action="{{url(route('cart.addToWishList'))}}" id="addToWishListForm-{{$item->id}}">
                            @csrf
                              <input type="hidden" name="package_id" id="package_id" value="{{$item->package_id}}">
                              <input type="hidden" name="deal_id" id="deal_id" value="{{$item->deal_id}}">
                              <input type="hidden" name="event_type" id="event_type" value="{{$item->event_id}}">
                            
                                        <button 
                                 type="button"
                                 data-form="#addToWishListForm-{{$item->id}}"
                                 data-action="{{url(route('cart.addToWishList'))}}"
                                 class="icon-btn wishlist-icon">
                                  <span><i class="fas fa-heart"></i></span>
                                </button>
                          </form>


                       <a href="{{url(route('cart.delete',$item->id))}}" class="icon-btn danger-btn ml-1" data-toggle="tooltip" title="" data-original-title="Delete"><i class="fas fa-trash-alt"></i></a>


                    </div>
                     </div>
                  </div>
                </div>
              </div>








 







 
@endforeach @if(empty($CartItems))
 
        <h4>Your Cart is Empty.</h4> </td>
 
@endif @else
 
        <h4>Your Cart is Empty.</h4>
        <p> You are not logged in with customer Account.</p>
     

@endif