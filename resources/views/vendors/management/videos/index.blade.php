@extends('vendors.management.layout')
@section('vendorContents')

<div class="container-fluid">
    <div class="row">
       <div class="col-lg-12">
          <div class="card vendor-dash-card">
       <div class="card-header"><h3>Add a video 
        <a href="{{url(route('vendor_category_videos_add_management',$category->slug))}}" class="btn btn-primary">Add New</a></h3></div>
           <div class="card-body">

<div class="row">
 
    @foreach($videos as $img)
 
      <?php $arr = (array)json_decode($img->keyValue); ?>
      <div class="col-md-6">
           <div class="gallery-card">
            <div class="video-gallery-container">
             <div class="video-container">
              <iframe width="661" height="372" src="{{$arr['link']}}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
              <div class="card-info">
                <h4>{{$arr['title']}}</h4>
                <ul class="acrdn-action-btns">
                   <li><a href="javascript:void(0);" class="action_btn primary-btn"><i class="fas fa-pencil-alt"></i></a></li>
                  <li><a href="javascript:void(0);" class="action_btn danger-btn"><i class="fas fa-trash-alt"></i></a></li>
             </ul>
              </div>
            </div>
      </div>
    </div>

    @endforeach

    {{$videos->links()}}

 
</div>
</div>
</div>
</div>
</div>
</div>
@endsection