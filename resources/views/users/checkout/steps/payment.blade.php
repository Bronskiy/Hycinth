@extends('users.checkout.index1')
@section('checkoutContent')

 





          <?php  

  $total = round($package->price + 3) + 3;

  $per = $total / 100;

  $discountedPrice = (!empty($deal)) ? ($deal->deal_off_type == 0) ? $deal->amount * $per :  ($total -$deal->amount) : $total;
  $stripe = SripeAccount(); 
?>

<div class="payment-table sidebar">
    <div class="row">
        <div class="col-lg-6">
        	<div class="payment-card-detail">
<label>Your Order</label>

<table class="table">
    <tr>
        <th>Package Price</th><td>${{$package->price}}</td>
    </tr>
  @if(!empty($deal))
    <tr>
        <th>Deal Discount</th><td>{{($deal->deal_off_type == 0) ? $deal->amount.'%' : '$'.$deal->amount }}</td>
    </tr>
  @endif


    <tr>
        <th>Tax</th><td>$3.00</td>
    </tr>

    <tr>
        <th>Service Fee</th><td>$3.00</td>
    </tr>

   <tr>
        <th>Total</th><td>${{$discountedPrice}}</td>
   </tr>    

</table>
</div>
</div>




 <div class="col-lg-6">
  <div class="payment-card-detail">
    <form>
     <label>Do You have any Coupon Code ?</label>
     <div class="flex-field-grp">
  
         <input type="text" name="couponcode" class="form-control"/>
   
     <div class=" btn-wrap">
     <button class="cstm-btn solid-btn">Apply</button>
 </div>
     </div>


 </form>
 <div class="form-group">
                        <label>Preferred contact method:</label>
                        <div class="custom-control custom-radio">
                           <input type="radio" id="customRadio1" name="customRadio" class="custom-control-input" checked="">
                           <label class="custom-control-label" for="customRadio1">Email</label>
                        </div>
                        <div class="custom-control custom-radio">
                           <input type="radio" id="customRadio2" name="customRadio" class="custom-control-input">
                           <label class="custom-control-label" for="customRadio2">Phone number</label>
                        </div>
                     </div>

@include('users.checkout.parts.stripe')
@include('users.checkout.parts.paypal')



</div>
 </div>

<!-- <div class="col-lg-6 offset-lg-3">
	<div class="payment-card-detail">
		
	</div>


</div> -->
</div>






@endsection