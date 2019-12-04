@extends('users.layouts.layout')
@section('content')

<div class="page-header">
                        <div class="page-block">
                            <div class="row align-items-center">
                                <div class="col-md-12">
                                    <div class="page-header-title">
                                        <h5 class="m-b-10"></h5>
                                    </div>
                                    <ul class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="{{url(route('user_dashboard'))}}"><i class="feather icon-home"></i></a></li>
                                        <li class="breadcrumb-item"><a href="javascript:void(0)">Profile</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

  <section class="content">
      <div class="row">
        <div class="col-12">
          <div class="card">
            <!-- /.card-header -->
 
            <div class="card-body">

              @include('admin.error_message')

<div class="row">

<div class="col-md-6">
<h3>Profile</h3>
  <form role="form" id="profileForm" method="post" enctype="multipart/form-data">
                <div class="profile-card">
                  @csrf

                  <input type="hidden" class="form-control" name="latitude" value="{{Auth::User()->latitude}}" id="latitude">
                  <input type="hidden" class="form-control" name="longitude" value="{{Auth::User()->longitude}}" id="longitude">
                  
                  {{textbox($errors,'Name','name',Auth::User()->name)}}
                  {{textbox($errors,'Phone Number','phone_number',Auth::User()->phone_number)}}
                  {{textbox($errors,'Location','user_location', Auth::User()->user_location)}}

                   <div class="profile-image">
                         <input type="file" name="image" accept="image/*" onchange="ValidateSingleInput(this, 'image_src')" id="selImage" class="form-control">
                         
                         <img id="image_src" class="img-radius" style="width: 100px; height: 100px; margin-top: 6px;" src="{{ Auth::User()->profile_image ? asset('').'/'.Auth::User()->profile_image : asset('/images/user.jpg') }}">

                          @if ($errors->has('image'))
                              <div class="error">{{ $errors->first('image') }}</div>
                          @endif
                   </div>
                  
                </div>
                <!-- /.card-body -->

                <div class="profile-card-ftr">
                  <button type="submit" id="profileFormBtn" class="btn btn-primary">Update Profile</button>
                </div>
 </form>


</div>

<div class="col-md-6">
<h3>Password Settings</h3>
  <form role="form" id="passwordForm" method="post" enctype="multipart/form-data">
                <div class="profile-card">
                   @csrf
                   {{password($errors,'Old Password*','old_password')}}
                   {{password($errors,'New Password*','password')}}
                   {{password($errors,'Confirm Password*','password_confirmation')}}                  
                </div>
                <!-- /.card-body -->

                <div class="">
                  <button type="submit" id="passwordFormBtn" class="btn btn-primary">Change Password</button>
                </div>
 </form>
</div>
</div>        
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
          <!-- /.card -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
     
     

  <div id="paypal-button-container"></div>

@endsection
@section('scripts')
<script src="{{url('/js/validations/profileValidation.js')}}"></script>
<script src="{{url('/js/validations/imageShow.js')}}"></script>
<script
    src="https://www.paypal.com/sdk/js?client-id=AZD4IUxUgJ7dy4zCpAsbKcU6Jc7dQYZrblQwCslBki7-gCs54oJDEaakYz5rhl0W89Gbi-d96xosLNHL"> // Required. Replace SB_CLIENT_ID with your sandbox client ID.
  </script>

<script type="text/javascript">
paypal.Buttons({
    createOrder: function(data, actions) {
      return actions.order.create({
        purchase_units: [{
          amount: {
            value: '0.01'
          }
        }]
      });
    },
    onApprove: function(data, actions) {
      return actions.order.capture().then(function(details) {
        console.log(details);
        alert('Transaction completed by ' + details.payer.name.given_name);
        // Call your server to save the transaction
        pay({paypal_email: 'superrrr@gmail.com', amount: '0.01'});
        // return fetch('/paypal-transaction-complete', {
        //   method: 'post',
        //   headers: {
        //     'content-type': 'application/json'
        //   },
        //   body: JSON.stringify({
        //     orderID: data.orderID
        //   })
        // });
      });
    }
  }).render('#paypal-button-container');

function pay(details) {
const data = { paypal_email: details.paypal_email, vendor_id: 123, amount: details.amount };
    let a = btoa(JSON.stringify(data));
    var result           = '';
    var characters       = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
    var charactersLength = characters.length;
    for ( var i = 0; i < 8; i++ ) {
      result += characters.charAt(Math.floor(Math.random() * charactersLength));
    }

    $.ajax({
            headers: { 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
            url: "{{ route('user_payToVendor') }}",
            type: "post",
            dataType: "JSON",
            data: { '_token': $('meta[name="csrf-token"]').attr('content'), 'id': record.id, data: result + a },
            success: function(res)
            {
                console.log('res ', res);
            },
            error: function(err) {
              console.log('err ', err);
            }
         });
}

// end paypal


function initialize() {
    var input = document.getElementById('user_location');
    var options = {    
      types: ['address'],
      componentRestrictions: {country: ["us", "ca"]}
    };
    var componentForm = {
      street_number: 'short_name',
      route: 'long_name',
      locality: 'long_name',
      administrative_area_level_1: 'short_name',
      country: 'long_name',
      postal_code: 'short_name'
    };    
    var autocomplete = new google.maps.places.Autocomplete(input, options);
    google.maps.event.addListener(autocomplete, 'place_changed', function () {
        var place = autocomplete.getPlace();
        
        for (var i = 0; i < place.address_components.length; i++) {
          var addressType = place.address_components[i].types[0];
          if (componentForm[addressType]) {
            var val = place.address_components[i][componentForm[addressType]];
            console.log(addressType);
          }
        }
        document.getElementById('latitude').value = place.geometry.location.lat();
        document.getElementById('longitude').value = place.geometry.location.lng();
        //document.getElementById('address').value = place.name;
        autocompleted = true;
    });
}
google.maps.event.addDomListener(window, 'load', initialize);

</script>
@endsection
