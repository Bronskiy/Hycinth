@if($CartItems->count() > 0)

	<div class="cart-totals mt-2">
		<div class="headline-wrap text-center">
		<h3 class="headline">Cart Totals</h3>
	</div>
		<span class="line"></span><div class="clearfix"></div>

		<table class="cart-table margin-top-5">
<?php

$Discount = ($CartItems->sum('package_price') - $CartItems->sum('discounted_price'));



?>


			<tbody>
            <tr>
				   <th>Cart Subtotal</th>
				  <td><strong>${{custom_format($CartItems->sum('package_price'),2)}}</strong></td>
		  	</tr>

		  	 <tr>
				   <th>Service Fee</th>
				  <td><strong><span class="plus-sign">+</span> $30.00</strong></td>
		  	 </tr>		  	 		  	 

		  	 <tr>
				   <th>Tax</th>
				  <td><strong><span class="plus-sign">+</span> $20.00</strong></td>
		  	 </tr>
		  	 <tr>
				   <th>Discount</th>
				  <td><strong><span class="minus-sign">-</span>  ${{custom_format($CartItems->sum('discount'),2)}}</strong></td>
		  	 </tr>		  	 


			 

			<tr>
				<th>Order Total</th>
				<td><strong>${{custom_format($CartItems->sum('discounted_price'),2)}}</strong></td>
			</tr>
<input type="hidden" id="CurrentCartTotal" value="{{$CartItems->sum('discounted_price')}}">
           @if($Discount > 0)
                
                <tr>
                	<td colspan="2"><p>You will save <strong>${{custom_format($Discount,2)}} </strong>on this order.</p></td>
                </tr>
             
           @endif

		</tbody>
  </table>
		<br>
		<!-- <a href="#" class="calculate-shipping"><i class="fa fa-arrow-circle-down"></i> Calculate Shipping</a> -->
	</div>
@endif