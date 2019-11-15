@extends('vendors.management.layout')
@section('vendorContents')

<div class="container-fluid">

    <div class="page_head-card">
    <div class="page-info">
            <div class="page-header-title">
                <h3 class="m-b-10">Add images</h3>
            </div>
            <ul class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html"><i class="fa fa-home" aria-hidden="true"></i></a></li>
                <li class="breadcrumb-item"><a href="javascript:">Basic Componants</a></li>
                <li class="breadcrumb-item"><a href="javascript:">Button</a></li>
            </ul>
        </div>
        <div class="side-btns-wrap">
          <a href="{{url(route('vendor_category__image_management',$category->slug))}}" class="btn btn-primary">View </a>
        </div>
  </div>

    <div class="row">
       <div class="col-lg-12">
          <div class="card vendor-dash-card">
       <div class="card-header"><h3>Add images 
        </h3></div>
           <div class="card-body">

<div class="row">
<div class="col-md-12">
  
 
                       {{choosefilemultiple($errors,'Gallery Image','gallery_image[]')}}


                          <script type="text/javascript">
                                     $('#gallery_image').fileinput({
                                             'theme': 'explorer-fas',
                                              headers: {
                                                   'X-CSRF-TOKEN': $('input[name=_token]').val()
                                              },
                                             'uploadUrl': '{{ url(route("upload_vendor_image_gallery")) }}?category_id={{$category->category_id}}',
                                              overwriteInitial: false,
                                              initialPreviewAsData: true,
                                              initialPreview: [
                                              
                                              ],
                                              initialPreviewConfig: [

                                              ]
                                });
                          </script>    


</div>
</div>
</div>
</div>
</div>
</div>
</div>




 
@endsection