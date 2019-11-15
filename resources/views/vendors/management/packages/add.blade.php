@extends('vendors.management.layout')
@section('vendorContents')

<div class="container-fluid">
  <div class="page_head-card">
    <div class="page-info">
            <div class="page-header-title">
                <h3 class="m-b-10">{{$title}}</h3>
            </div>
            <ul class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html"><i class="fa fa-home" aria-hidden="true"></i></a></li>
                <li class="breadcrumb-item"><a href="javascript:">Basic Componants</a></li>
                <li class="breadcrumb-item"><a href="javascript:">Button</a></li>
            </ul>
        </div>
        <!-- <div class="side-btns-wrap">
          <a href="{{url(route('vendor_category_add_image_management',$category->slug))}}" class="btn btn-primary">Add New </a>
        </div> -->
  </div>

    <div class="row">
       <div class="col-lg-12">
          <div class="card vendor-dash-card">
            <div class="card-header"><h3>{{$title}}</h3></div>
                <div class="card-body">

<!-- 
<h3>   <a href="{{url(route('vendor_faqsadd_management',$slug))}}"><i class="fa fa-plus"></i></a></h3> -->
 

     
          <form method="post">
			@csrf
          {{textbox($errors,'Title*','title')}}
			    {{textbox($errors,'Amount*','amount')}}
			    {{textarea($errors,'Description*','description')}}
            <button class="cstm-btn">Save</button>
      </form>                 

   
    </div>
   </div>
  </div>
  </div>
</div>
 
</div>
@endsection

@section('scripts')
<script type="text/javascript">
  CKEDITOR.replace('description');
</script>
@endsection
