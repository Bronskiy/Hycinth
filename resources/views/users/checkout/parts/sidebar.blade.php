

<h3>Payement</h3>

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


</table>
<?php  

  $total = round($package->price + 3) + 3;

  $per = $total / 100;

  $discountedPrice = (!empty($deal)) ? ($deal->deal_off_type == 0) ? $deal->amount * $per :  ($total -$deal->amount) : $total;
  $stripe = SripeAccount(); 
?>

<div class="GrandTotal"><b>Total : </b> ${{$discountedPrice}}</div>

@include('users.checkout.parts.stripe')
@include('users.checkout.parts.paypal')
