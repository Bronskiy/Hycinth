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
  $arr =  json_decode($stripe_credentials);

  $mode = !empty($arr) && !empty($arr->mode) ? $arr->mode : '';
  $sandbox_secret = !empty($arr) && !empty($arr->sandbox_secret) ? $arr->sandbox_secret : '';
  $sandbox_public = !empty($arr) && !empty($arr->sandbox_public) ? $arr->sandbox_public : '';

  $live_secret = !empty($arr) && !empty($arr->live_secret) ? $arr->live_secret : '';
  $live_public = !empty($arr) && !empty($arr->live_public) ? $arr->live_public : '';
@endphp



<div class="col-md-12">

  <form method="POST" id="stripeCreadentialsForm">
      @csrf
      <input type="hidden" name="type" value="{{Request::route('id')}}">
      <input type="checkbox" name="mode" id="mode" {{ $mode ? 'checked' : ''}} /> <p id="mode_txt">{{ $mode ? 'Live' : 'Sandbox'}}</p>

      <div class="card">
        <div class="card-body">
          <h5 class="card-title">Sandbox Creadentials</h5>
           {{textbox($errors,'Sandbox Secret*', 'sandbox_secret', $sandbox_secret)}}
           {{textbox($errors,'Sandbox Public*', 'sandbox_public', $sandbox_public)}}
        </div>
      </div>

       <div class="card">
        <div class="card-body">
          <h5 class="card-title">Live Creadentials</h5>
           {{textbox($errors,'Live Secret*', 'live_secret', $live_secret)}}
           {{textbox($errors,'Live Public*', 'live_public', $live_public)}}
        </div>
      </div>

      <div class="card-footer">
        <button type="submit" id="stripeCreadentialsFormBtn" class="btn btn-primary">Submit</button>
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
<script src="{{url('/admin-assets/js/validations/settings/stripeCreadentialsPageValidation.js')}}"></script>
@endsection
