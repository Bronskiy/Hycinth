@extends('layouts.admin')
 
@section('content')
 <div class="page-header">
    <div class="page-block">
        <div class="row align-items-center">
            <div class="col-md-12">
                <div class="page-header-title">
                    <h5 class="m-b-10">{{$title}}</h5>
                </div>
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url(route('admin_dashboard'))}}"><i class="feather icon-home"></i></a></li>
                    <li class="breadcrumb-item "><a href="{{ route($addLink) }}">View</a></li>
                    <li class="breadcrumb-item "><a href="javascript:void(0)">Edit</a></li>
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
       @include('admin.error_message')
 
            <div class="card-body">

@php
  $arr =  json_decode($paypal_credentials);

  $mode = !empty($arr) && !empty($arr->mode) ? $arr->mode : '';
  
  $sandbox_username = !empty($arr) && !empty($arr->sandbox_username) ? $arr->sandbox_username : '';
  $sandbox_password = !empty($arr) && !empty($arr->sandbox_password) ? $arr->sandbox_password : '';
  $sandbox_clientId = !empty($arr) && !empty($arr->sandbox_clientId) ? $arr->sandbox_clientId : '';
  $sandbox_secret = !empty($arr) && !empty($arr->sandbox_secret) ? $arr->sandbox_secret : '';

  $live_username = !empty($arr) && !empty($arr->live_username) ? $arr->live_username : '';
  $live_password = !empty($arr) && !empty($arr->live_password) ? $arr->live_password : '';
  $live_clientId = !empty($arr) && !empty($arr->live_clientId) ? $arr->live_clientId : '';
  $live_secret = !empty($arr) && !empty($arr->live_secret) ? $arr->live_secret : '';
@endphp



<div class="col-md-12">

  <form method="POST" id="paypalCreadentialsForm">
      @csrf
      <input type="hidden" name="type" value="{{Request::route('id')}}">
      <input type="checkbox" name="mode" id="mode" {{ $mode ? 'checked' : ''}} /> <p id="mode_txt">{{ $mode ? 'Live' : 'Sandbox'}}</p>

      <div class="card">
        <div class="card-body">
          <h5 class="card-title">Sandbox Creadentials</h5>
           {{textbox($errors,'Sandbox User Name*', 'sandbox_username', $sandbox_username)}}
           {{textbox($errors,'Sandbox Password*', 'sandbox_password', $sandbox_password)}}
           {{textbox($errors,'Sandbox Client Id*', 'sandbox_clientId', $sandbox_clientId)}}
           {{textbox($errors,'Sandbox Secret*', 'sandbox_secret', $sandbox_secret)}}
        </div>
      </div>

       <div class="card">
        <div class="card-body">
          <h5 class="card-title">Live Creadentials</h5>
           {{textbox($errors,'Live User Name*', 'live_username', $live_username)}}
           {{textbox($errors,'Live Password*', 'live_password', $live_password)}}
           {{textbox($errors,'Live Client Id*', 'live_clientId', $live_clientId)}}
           {{textbox($errors,'Live Secret*', 'live_secret', $live_secret)}}
        </div>
      </div>

      <div class="card-footer">
        <button type="submit" id="paypalCreadentialsFormBtn" class="btn btn-primary">Submit</button>
      </div>
 </form>

</div>
      </div>
    </div>
  </div>
</div>
</section> 
     
@endsection

@section('scripts')
<script src="{{url('/admin-assets/js/validations/settings/paypalCreadentialsPageValidation.js')}}"></script>
@endsection
