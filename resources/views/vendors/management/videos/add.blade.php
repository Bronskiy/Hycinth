@extends('vendors.management.layout')
@section('vendorContents')
<div class="container-fluid">

	 

    <div class="page_head-card">
    <div class="page-info">
            <div class="page-header-title">
                <h3 class="m-b-10">{{$title}}</h3>
            </div>
            <ul class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{ route('vendor_dashboard') }}"><i class="fa fa-home" aria-hidden="true"></i></a></li>
                <li class="breadcrumb-item"><a href="{{ route($addLink , $slug) }}">List</a></li>
                <li class="breadcrumb-item"><a href="javascript:void(0)">Add Video</a></li>
            </ul>
        </div>
  </div>
@include('vendors.errors')

    <div class="row">
       <div class="col-lg-12">
          <div class="card vendor-dash-card">
       <div class="card-header"><h3>Add a video </h3></div>
           <div class="card-body">

<div class="row">
 
     

<div class="col-md-12">
  <form method="post" id="videoForm">
   {{textbox($errors,'Title','title')}}
   {{textbox($errors,'Video Link (please paste here youtube video link)','video_link')}}
@csrf
<button class="cstm-btn">Save</button>
</form>
</div>



 
</div>
@endsection
</div>
</div>
</div>
</div>
</div>

@section('scripts')
<script src="{{url('/js/validations/videoValidation.js')}}"></script>
@endsection