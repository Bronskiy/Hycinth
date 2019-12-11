@extends('layouts.home')
@section('content')


<style type="text/css">
    .banner-content {
    padding: 10px;
    margin-top: 153px;
    display: inline-block;
    width: 100%;
    text-align: center;
    z-index: 1;
    position: relative;
}

/*.main-banner {
    height: auto;
    padding: 147px 50px 34px 0px;
    text-align: center;
    font-size: 30px;
    color: #fff !important;
    background:url('/frontend/images/banner-bg.png');
}*/

.main-banner h3{
    color: #fff !important;
}

.main-banner h3 {
    color: #fff !important;
    font-size: 38px;
    font-weight: bold;
}
.Checkout-container{
    background:#f7f7f7;
}
.checkout-wrap{
    padding: 50px 0;

}

.Checkout-container #progressbar {
    margin-bottom: 30px;
    overflow: hidden;
}

.Checkout-container #progressbar li.active {
    color: #35486b;
}

.Checkout-container #progressbar li {
    list-style-type: none;
    color: #99a2a8;
    font-size: 9px;
    width: calc(100%/5);
    float: left;
    position: relative;
    font: 500 13px/1 "Roboto", sans-serif;
}

.Checkout-container #progressbar li.active:before, .Checkout-container #progressbar li.active:after {
    background: #35486b;
    color: white;
}


.Checkout-container #progressbar li.active:before, .Checkout-container #progressbar li.active:after {
    background: #35486b;
    color: white;
}


.checkout-step h4 a {
    background: #071738;
    font-size: 12px;
    color: #fff;
    padding: 4px;
    line-height: 13px;
    float: right;
    position: relative;
    top: 7px;
}
.description-event h5 {
    font-size: 16px;
    font-weight: 500;
    color: #b58ec3;
}

.description-event {
    padding: 15px;
}

.description-event p {
    font-size: 13px;
    color: #3a3737;
    margin-bottom: 15px;
}

.description-event p i {
    color: #bfb7b7;
}
.description-event p span {
    color: #8a8181;
}
a.pull-right {
    float: right;
    background-color: #eda208;
    border-color: #eda208;
    color: #fff;
}

.modal-dialog {
    max-width: 70%;
}

.upcomming-events {
    background: #f7f7f7;
    padding: 15px;
    margin: 0px;
    margin-bottom: 15px;
    position: relative;
}

.upcomming-events h4 {
    margin-bottom: 0px;
     
    padding: 6px 0;
}

.upcomming-events p {
    font-size: 12px;
    color: #36496c;
}

 

.upcomming-events p i {
    margin-right: 10px;
}

.upcomming-events a {
    position: absolute;
    right: 0px;
    top: 26px;
    right: 18px;
    background: #36496c;
    border-color: #36496c;
    padding: 1px 4px;
    border-radius: 0px;
    font-size: 13px;
}
</style>

 <section class="main-banner" style="background:url('/frontend/images/banner-bg.png');">
        <div class="container">
            <div class="banner-content">
                <h1 class="banner-heading">Checkout</h1>
              
            </div>
        </div>
    </section>  
<section class="checkout-wrap">
        <div class="container lr-container">
<div class="sec-card">
               <span class="aside-toggle">
                                <i class="fa fa-bars"></i>
                                <span class="cross-class">
                                    <i class="fas fa-times" style="display: none;"></i>
                                </span>
                            </span>
                <div class="row">

                    
                    <div class="col-lg-12">
                        <div class="inner-content">
                           

                       <!-- Multi step form --> 
<section class="multi_step_form">  
  <div id="msform"> 
    <!-- Tittle -->

    <!-- progressbar -->
    <ul id="progressbar">
      <li class="active">Event Detail</li>  
      <li>Deal Review</li> 
      <li>Package</li>
       <li>Billing</li>
       <li>Payment</li>
    </ul>


           

                 @include('vendors.errors')
      <div class="multistep-form-card">          
                 @yield('checkoutContent')






 
</div>
  </div>
</section>
 
       
                 
          </div>
      </div>

          <!-- <div class="col-lg-3">
              @include('users.checkout.sidebar')
          </div> -->

</div>
</div>
</section>

 

@endsection

@section('scripts')

 <script src="https://www.paypal.com/sdk/js?client-id=AZD4IUxUgJ7dy4zCpAsbKcU6Jc7dQYZrblQwCslBki7-gCs54oJDEaakYz5rhl0W89Gbi-d96xosLNHL"> 
  </script>
<script src="{{ asset('/js/checkout/paypal.js') }}"></script>

@endsection
