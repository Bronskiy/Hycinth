@extends('vendors.management.layout')
@section('vendorContents')

<div class="container-fluid">
    <div class="row">
       <div class="col-lg-8 offset-lg-2">
          <div class="card vendor-dash-card">
            <div class="card-header"><h3>{{$title}} <a href="{{url(route('vendor_descriptionadd_management',$slug))}}"><i class="fa fa-plus"></i></a></h3></div>
                <div class="card-body">

 
 

     <div class="col-md-12"> 
        
        <?= $description ?>      

    </div>
    </div>
   </div>
  </div>
  </div>
</div>
 
</div>
@endsection

@section('scripts')
<script type="text/javascript">
  CKEDITOR.replace('answer');
</script>
@endsection
