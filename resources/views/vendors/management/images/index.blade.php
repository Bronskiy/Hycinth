@extends('vendors.management.layout')
@section('vendorContents')

<div class="container-fluid">
    <div class="row">
       <div class="col-lg-12">
          <div class="card vendor-dash-card">
       <div class="card-header"><h3>Add images 
        <a href="{{url(route('vendor_category_add_image_management',$category->slug))}}" class="btn btn-primary">Add New </a></h3></div>
           <div class="card-body">
<div class="row">
  <div class="col-md-12">   
      	   @foreach($images as $img)
            <div class="col-lg-4">
                <div class="gallery-card">
                  <div class="image-gallery-container">
                       <img src="{{url($img->keyValue)}}" width="100%">
                       <!-- <div class="olay">
                           <a href="{{route('vendor_category_meta_delete',[$category->slug,$img->id])}}">Delete</a>
                           
                       </div> -->
                   <div class="card-info">
                <h4>test</h4>
                <ul class="acrdn-action-btns">
                   <li><a href="javascript:void(0);" class="action_btn primary-btn"><i class="fas fa-pencil-alt"></i></a></li>
                  <li><a href="{{route('vendor_category_meta_delete',[$category->slug,$img->id])}}" class="action_btn danger-btn"><i class="fas fa-trash-alt"></i></a></li>
             </ul>
              </div>
                    

                  </div>
                </div>
            </div>
          @endforeach
    {{$images->links()}}      	                    
    </div>  
</div>
</div>
</div>
</div>
</div>
</div>
@endsection