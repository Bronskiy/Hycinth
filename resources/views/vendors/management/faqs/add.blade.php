@extends('vendors.management.layout')
@section('vendorContents')

<div class="container-fluid">
    <div class="row">
       <div class="col-lg-8 offset-lg-2">
          <div class="card vendor-dash-card">
            <div class="card-header"><h3>{{$title}}</h3></div>
                <div class="card-body">

<!-- 
<h3>   <a href="{{url(route('vendor_faqsadd_management',$slug))}}"><i class="fa fa-plus"></i></a></h3> -->
 

     <div class="col-md-12"> 
          <form method="post">
			@csrf
			    {{textbox($errors,'Question*','question')}}
			    {{textarea($errors,'Answer*','answer')}}
            <button class="cstm-btn">Save</button>
      </form>                 

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
