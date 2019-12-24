@extends('layouts.home')
@section('content')
<link rel="stylesheet" type="text/css" href="{{url('/frontend/css/cart.css')}}">

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
                 <div class="messageNotofications"></div>
            </div>

            <div class="responsive-table">
            	<table class="table cart-table">
            		<thead>
            			<tr>
                            <th width="20%">Event</th>
            				<th width="20%">Packages</th>
            				<th width="20%">Deals & Discount</th>
            				<th>Basic Price</th>
                            <th>Discounted Price</th>
            				<th>Action</th>
            			</tr>
            		</thead>
            		<tbody id="CartItems"></tbody>
            	</table>


               <table class="cart-table bottom">

        		     <tbody>
                         <tr>
            				<th>
            			    <form action="{{url(route('cart.applyCoupon'))}}" 
                                  method="get"
                                  class="apply-coupon mini-btn-wrap"
                                  id="CouponApply">
            						<input class="search-field" type="text" name="coupon_code" placeholder="Coupon Code" value="">
            						<button class="cstm-btn"><span><img src="{{url('200.gif')}}"></span>Apply Coupon</button>
                                    <p class="errorMSG"></p>
            				 </form>

            					<div class="cart-btns mini-btn-wrap">
                        @if(Auth::check() && Auth::User()->CartItems->count() > 0)
            					     	<a href="{{url('/')}}" class="cstm-btn solid-btn">Proceed to Checkout</a>
                        @endif
            					     	<a href="{{url(route('home_vendor_listing_page'))}}" class="cstm-btn solid-btn">Continue Shopping</a>
            					</div>
            				</th>
        				</tr>
                     </tbody>
        		</table>

            <div class="row">
              	 <div class="col-lg-6 offset-lg-6" id="cartTotals"></div>
            </div>


        </div>

	      </div>
	  </div>
	</div>
</section>

 

<input type="hidden" name="cartRoute" value="{{url(route('cart.getCartItems'))}}">
@endsection
@section('scripts')
  <script type="text/javascript" src="{{url('/js/cartpage.js')}}"></script>
 @endsection