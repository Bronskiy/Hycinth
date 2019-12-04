@extends('layouts.vendor')
@section('vendorContents')
<div class="container-fluid">
    <div class="row">
       <div class="col-lg-6 offset-lg-3">
          <div class="card vendor-dash-card">
       <div class="card-header"><h3>PAYMENT SETTINGS</h3></div>
           <div class="card-body">
@include('admin.error_message')
<div class="row">

<div class="col-md-12">

<form method="post" id="profileForm" enctype="multipart/form-data">
	@csrf

     <div class="form-group">
        <div class="custom-control custom-radio mb-1">
          <input required type="radio" value="paypal" id="paypal" name="payment_status" {{ Auth::User()->payment_status == 'paypal' ? 'checked' : '' }} class="custom-control-input"/>
          <label class="custom-control-label" for="paypal">Paypal</label>
        </div>

      <div class="custom-control custom-radio mb-1">
          <input required type="radio" value="stripe" id="stripe" name="payment_status" {{ Auth::User()->payment_status == 'stripe' ? 'checked' : '' }} class="custom-control-input"/>
          <label class="custom-control-label" for="stripe">Stripe</label>
        </div>

        <div class="custom-control custom-radio mb-1">
          <input required type="radio" value="both" id="both" name="payment_status" {{ Auth::User()->payment_status == 'both' ? 'checked' : '' }} class="custom-control-input"/>
          <label class="custom-control-label" for="both">Both</label>
        </div>
     <div class="btn-wrap">
      <button id="profileFormBtn" class="cstm-btn">Update</button>
     </div>
</form>

</div>
</div>
</div>
</div>
</div>
</div>
</div>

@endsection

@section('scripts')
<script src="{{url('/js/validations/profileValidation.js')}}"></script>
@endsection
