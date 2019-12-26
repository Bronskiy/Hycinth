<fieldset class="complete p-3">
<div class="complete-card">
  <div class="row">
    <div class="col-lg-8">
       <h3>Order Summary <span class="check-add-icon"> <i class="fa fa-check"></i></span> </h3>

    <div class="checkout-billing-address">
    @if(!empty($orders) && $orders->count() > 0)
        <p>{{$orders->count()}} {{$orders->count() == 1 ? 'Item' : 'Items'}}</p>
    @endif
    </div>

    </div>
    <div class="col-lg-4">
      <div class="mini-btn-wrap mt-3 text-right">
      <a href="{{url(route('checkout.orderSummary'))}}" class="cstm-btn solid-btn">Change</a>
    </div>
    </div>
  </div>
</div>
</fieldset>