@extends('vendors.management.layout')
@section('vendorContents')
<div class="container-fluid">
    <div class="row">
       <div class="col-lg-12">
          <div class="card vendor-dash-card">
       <div class="card-header"><h3>Add a video <a href="{{url(route('vendor_category_videos_management',$category->slug))}}" class="btn btn-primary">View</a></h3></div>
           <div class="card-body">

<div class="row">
 
     

<div class="col-md-12">
  <form method="post">
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