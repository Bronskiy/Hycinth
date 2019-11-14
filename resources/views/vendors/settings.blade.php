@extends('layouts.vendor')
@section('vendorContents')
<div class="container-fluid">
    <div class="row">
       <div class="col-lg-6 offset-lg-3">
          <div class="card vendor-dash-card">
       <div class="card-header"><h3>PROFILE SETTINGS 
        <a href="http://49.249.236.30:6633/vendor/category/photography/gallery/images/add" class="btn btn-primary">Add New </a></h3></div>
           <div class="card-body">

<div class="row">

<div class="col-md-12">

<form method="post" enctype="multipart/form-data">
	@csrf

	{{textbox($errors,'Name','name',Auth::user()->name)}}

    {{choosefile($errors,'Profile Image','image')}}

    @if(Auth::user()->profile_image != "")
    <figure class="profile-img-upload text-center">
       <img src="{{url('/'.Auth::user()->profile_image)}}" width="100">
   </figure>
    @endif
   <div class="btn-wrap">
    <button class="cstm-btn">Update</button>
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