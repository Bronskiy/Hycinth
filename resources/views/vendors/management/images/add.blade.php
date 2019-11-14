@extends('vendors.management.layout')
@section('vendorContents')

<div class="container-fluid">
    <div class="row">
       <div class="col-lg-12">
          <div class="card vendor-dash-card">
       <div class="card-header"><h3>Add images 
        <a href="{{url(route('vendor_category__image_management',$category->slug))}}" class="btn btn-primary">View </a></h3></div>
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
                                             'uploadUrl': '{{ url(route("upload_vendor_image_gallery")) }}?category_id={{$category->id}}',
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