

<h3>Payement</h3>




<table class="table">
	<tr>
		<th>Package Price</th><td>${{$package->price}}</td>
	</tr>
    <tr>
		<th>Deal Discount</th><td>{{($deal->deal_off_type == 0) ? $deal->amount.'%' : '$'.$deal->amount }}</td>
	</tr>


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

  $discountedPrice = ($deal->deal_off_type == 0) ? $deal->amount * $per :  ($total -$deal->amount);
  $stripe = SripeAccount() 
?>

<div class="GrandTotal"><b>Total : </b> ${{$discountedPrice}}</div>
 
                          <form action="" method="POST">
                            @csrf
                            <script
                              src="https://checkout.stripe.com/checkout.js" class="stripe-button new-main-button"
                              data-key="{{$stripe['pk']}}"
                              data-amount="{{$discountedPrice * 100}}"
                              data-name="Envision"
                              data-description="Shopping"
                              data-email="{{Auth::user()->email}}"
                              
                              data-locale="auto">
                            </script>
                          </form>

























