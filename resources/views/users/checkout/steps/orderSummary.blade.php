@extends('users.layouts.checkout')
@section('checkoutContent')





@include('users.checkout.completedSteps.billing')







<fieldset>
      <div class="card-heading">
      <h3><i class="fa fa-cart-plus" aria-hidden="true"></i> Order Summary</h3>     

      <div id="messages"></div>
    </div>
                     
   <div class="checkout-billing-address ">



      @include('users.checkout.steps.summary')



   </div>
 </fieldset>


<div class="upcomming-step">
 @include('users.checkout.completedSteps.payment')
</div>
@endsection