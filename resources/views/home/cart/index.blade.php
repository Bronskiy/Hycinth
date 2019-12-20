@extends('layouts.home')
@section('content')


<section class="log-sign-banner aos-init aos-animate" data-aos="fade-up" data-aos-duration="3000" "="" style="background:url(http://49.249.236.30:6633/uploads/1574318396.png);">
    <div class="container">
            <div class="page-title text-center">
                     <h1>Cart</h1>
                </div>
            </div>    
        </section>


<section class="cart-sec">
	 <div class="container lr-container">
	   <div class="sec-card">
	      <div class="cart-card">
           <div class="card-heading">
                <h3>Shopping Cart</h3>
            </div>

            <div class="responsive-table">
            	<table class="table cart-table">
            		<thead>
            			<tr>
                            <th>Business</th>
            				<th>Packages</th>
            				<th>Deals & Discount</th>
            				<th>Basic Price</th>
            				<th>Action</th>
            			</tr>
            		</thead>
            		<tbody>

                      @if(Auth::check() && Auth::user()->role == 'user')         
            			 
                           @foreach($CartItems as $item)
                			<tr>
                                <td>
                                    <div class="cart-business-image">
                                        <img src="{{url(getBasicInfo($item->vendor->user_id, $item->category_id,'basic_information','cover_photo'))}}">
                                    </div>
                                    <div class="cart-business-detail">
                                         {{$item->vendor->title}}
                                    <h6 class="packageCategory">{{$item->category->label}}</h6>
                                    </div>
                                </td>
                                <td>
                                    <h4>{{$item->package->title}}</h4>
                                    <h6 class="packageCategory">${{$item->package->price}}</h6>
                                    

                                </td>
                				<td>

                                    @if($item->deal != null && $item->deal->count() > 0)
                                       <div class="deal-cart-box">

                                        <div class="image"> <img src="{{url($item->deal->image)}}"></div>
                                        <div class="deal-detail-box">
                                           <h4>{{$item->deal->title}}</h4>
                                            <h6 class="packageCategory">Deal Discount : {{$item->deal->deal_off_type == 0 ? $item->deal->amount.'%' : '$'.$item->deal->amount}}</h6>
                                            <div class="deal_life">{!!$item->deal->deal_life == 1 ? 'From <b>'.date('d-m-Y',strtotime($item->deal->start_date)).'</b> To <b>'.date('d-m-Y',strtotime($item->deal->expiry_date)).' </b>' : 'Permanent' !!}</div>
                                        @if($item->deal->type_of_deal == 0)
                                          <p>Discount will be applied after appling the <b>Promo Code</b></p>
                                        
                                        @endif
                                    </div>
                                    </div>


                                    @else

                                    <h4>N/A</h4>

                                    @endif


                                </td>
                				<td>${{$item->discounted_price}}</td>
                				<td><div class="action-btn-wrap">
                					<a href="javascript:void(0);" class="icon-btn"><span><i class="fas fa-heart"></i></span></a>
                                    <a href="javascript:void(0)" class="icon-btn danger-btn ml-1" data-toggle="tooltip" title="" data-original-title="Delete"><i class="fas fa-trash-alt"></i></a>
                                </div>
                            </td>
                			</tr>
                            @endforeach

                            @if(empty($$CartItems))
                              <tr>
                                  <td colspan="4"> <p>Your Cart is Empty.</p>  </td>
                              </tr>
                            @endif

                      @endif
            			 
            		</tbody>
            	</table>


            	<table class="cart-table bottom">

				<tbody><tr>
				<th>
					<form action="#" method="get" class="apply-coupon mini-btn-wrap">
						<input class="search-field" type="text" placeholder="Coupon Code" value="">
						<a href="javascript:void(0);" class="cstm-btn">Apply Coupon</a>
					</form>

					<div class="cart-btns mini-btn-wrap">
						<a href="checkout-billing-details.html" class="cstm-btn solid-btn">Proceed to Checkout</a>
						<a href="javascript:void(0);" class="cstm-btn solid-btn">Continue Shopping</a>
					</div>
				</th>
				</tr>

			</tbody>
		</table>

  <div class="row">
  	<div class="col-lg-6 offset-lg-6">
		<div class="cart-totals mt-5">
		<h3 class="headline">Cart Totals</h3><span class="line"></span><div class="clearfix"></div>

		<table class="cart-table margin-top-5">

			<tbody><tr>
				<th>Cart Subtotal</th>
				<td><strong>$178.00</strong></td>
			</tr>

			<tr>
				<th>Shipping and Handling</th>
				<td>Free Shipping</td>
			</tr>

			<tr>
				<th>Order Total</th>
				<td><strong>$178.00</strong></td>
			</tr>

		</tbody></table>
		<br>
		<!-- <a href="#" class="calculate-shipping"><i class="fa fa-arrow-circle-down"></i> Calculate Shipping</a> -->
	</div>
  </div>
</div>


            </div>

	      </div>
	  </div>
	</div>
</section>













@endsection