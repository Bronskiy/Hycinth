
<table class="table">

@if($orders->count() > 0)
 @foreach($orders->get() as $item)


           



<tr>
	<td  data-item="{{$item->id}}">

          <h4>{{$item->event->title}}</h4>
          <h6 class="table-price">{{$item->package->title}}</h6>
          <h6 class="table-price">
          	  ${{custom_format($item->discounted_price,2)}}
          	  @if($item->discounted_price < $item->package->price && $item->deal != null && $item->deal->count() > 0) 
          	    <span class="offer_discount">${{custom_format($item->package->price,2)}}</span>
          	  @endif
              @if($item->deal != null && $item->deal->count() > 0)
                 {{$item->deal->deal_off_type == 0 ? $item->deal->amount.'%' : '$'.custom_format($item->deal->amount,2)}}
                  Off 1 Deal applied     
              @endif

          </h6>
          
	</td>
</tr>
 

  @endforeach
</table>




@if($orders->count() > 0)

	<div class="cart-totals mt-5">
		<h3 class="headline">Cart Totals</h3><span class="line"></span><div class="clearfix"></div>

		<table class="cart-table margin-top-5">
            <?php $Discount = ($orders->sum('package_price') - $orders->sum('discounted_price')); ?>
              <tbody>
		            <tr>
						   <th>Cart Subtotal</th>
						  <td><strong>${{custom_format($orders->sum('package_price'),2)}}</strong></td>
				  	</tr>

				  	 <tr>
						   <th>Discount</th>
						  <td><strong>${{custom_format($orders->sum('discount'),2)}}</strong></td>
				  	 </tr>

					 

					<tr>
						<th>Order Total</th>
						<td><strong>${{custom_format($orders->sum('discounted_price'),2)}}</strong></td>
					</tr>

		          
		   </tbody>
       </table>
	 <br>
		
<div class="row">
 <div class="col-md-8">
 	 @if($Discount > 0)
		    <p>You will save <strong>${{custom_format($Discount,2)}} </strong>on this order.</p>
	 @endif
 </div>
 <div class="col-md-4"><a href="{{url(route('checkout.paymentPage'))}}" class="cstm-btn solid-btn pull-right">Continue</a></div>
</div>

	</div>
@endif
 @else








@endif




























