<fieldset class="complete">
      <div class="card-heading">
      <h3><i class="fa fa-location-arrow" aria-hidden="true"></i> Billing Address
             <a href="{{url(route('checkout.billingAdress'))}}" class="btn btn-info pull-right">Change</a>
      </h3>     

      <div id="messages"></div>
    </div>

    @if(Session::has('billingAddress'))
    <div class="checkout-billing-address">
    <?php $address = json_decode(Session::get('billingAddress')); ?>
    <p><strong>{{$address->name}}</strong> {{$address->address}}, {{$address->city}}, {{$address->state}}, {{$address->country}} ({{$address->zipcode}})</p>
 
   </div>
    @endif
 </fieldset>