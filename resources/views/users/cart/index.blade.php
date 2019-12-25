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







<!-- start Heading -->

 <div class="cart-items-wrap">
              <div class="row no-gutters">
                <div class="col-lg-2">
                  <div class="cart-col-wrap">
                    <div class="cart-table-head">
                      <h3>Event Image</h3>
                    </div>
                  </div>
                </div>
                <div class="col-lg-5">
                  <div class="cart-col-wrap">
                    <div class="cart-table-head">
                      <h3>Details</h3>
                    </div>                    
                  
                  </div>
                </div>
                <div class="col-lg-3">
                  <div class="cart-col-wrap">
                    <div class="cart-table-head">
                      <h3>AddOns</h3>
                    </div>                    
                    
                  </div>
                </div>
                <div class="col-lg-2">
                  <div class="cart-col-wrap">
                    <div class="cart-table-head">
                      <h3>Action</h3>
                    </div>
                     
                  </div>
                </div>
              </div>
              
            </div>


<!-- start Heading -->


            <div class="cart-items-wrap" id="CartItems">
 

              
            </div>





 <div class="row">
                <div class="col-lg-12 text-right">
               <table class="cart-table bottom">

        		     <tbody>
                         <tr>
            				<th align="right">
                        @if(Auth::check() && Auth::User()->CartItems->count() > 0)
            			    <form action="{{url(route('cart.applyCoupon'))}}" 
                                  method="get"
                                  class="apply-coupon mini-btn-wrap"
                                  id="CouponApply">
            						<input class="search-field" type="text" name="coupon_code" placeholder="Coupon Code" value="">
            						<button class="cstm-btn"><span><img src="{{url('200.gif')}}"></span>Apply Coupon</button>
                                    <p class="errorMSG"></p>
            				 </form>
                     @endif
            				</th>
        				</tr>
                     </tbody>
        		</table>
          </div>
          </div>

            <div class="row">
              	             <div class="col-lg-6 offset-lg-6" id="cartTotals"></div>
                             <div class="btn-outer-wrap text-right">
                                      <div class="cart-btns mini-btn-wrap">
                                          @if(Auth::check() && Auth::User()->CartItems->count() > 0)
                                              <a href="{{url(route('checkout.billingAdress'))}}" class="cstm-btn solid-btn">Proceed to Checkout</a>
                                          @endif
                                              <a href="{{url(route('home_vendor_listing_page'))}}" class="cstm-btn solid-btn">Continue Shopping</a>
                                      </div>
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