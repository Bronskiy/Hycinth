@if($CartItems->count() > 0)

	<div class="cart-totals mt-5">
		<h3 class="headline">Cart Totals</h3><span class="line"></span><div class="clearfix"></div>

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
				   <th>Discount</th>
				  <td><strong>${{custom_format($CartItems->sum('discount'),2)}}</strong></td>
		  	 </tr>

			 

			<tr>
				<th>Order Total</th>
				<td><strong>${{custom_format($CartItems->sum('discounted_price'),2)}}</strong></td>
			</tr>

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