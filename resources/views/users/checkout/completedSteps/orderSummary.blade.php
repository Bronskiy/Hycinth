<fieldset class="complete">
      <div class="card-heading">
       <h3>
             <i class="fa fa-location-arrow" aria-hidden="true"></i> Order Summary
             <a href="{{url(route('checkout.orderSummary'))}}" class="btn btn-info pull-right">Change</a>
       </h3>     

       <div id="messages"></div>
    </div>
   <div class="checkout-billing-address">
    @if(!empty($orders) && $orders->count() > 0)
        {{$orders->count()}} {{$orders->count() == 1 ? 'Item' : 'Items'}}
    @endif
  </div>
 </fieldset>