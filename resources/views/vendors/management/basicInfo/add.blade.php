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
                <li class="breadcrumb-item"><a href="{{ route($addLink, $slug) }}">List</a></li>
                <li class="breadcrumb-item"><a href="javascript:void(0)">Add</a></li>
            </ul>
        </div>
  </div>

  @include('vendors.errors')

    <div class="row">
       <div class="col-lg-12">
          <div class="card vendor-dash-card">
            <div class="card-header"><h3>{{$title}}</h3></div>
                <div class="card-body">

<!-- 
<h3>   <a href="{{url(route('vendor_faqsadd_management',$slug))}}"><i class="fa fa-plus"></i></a></h3> -->
 

     <div class="col-md-6"> 
          <form method="post">
			     @csrf
			     <input type="hidden" name="type" value="basic_information">
           {{textbox($errors,'Business Name*','business_name',$business_name)}}

           {{textbox($errors,'Website*','website',$website)}}
           {{textbox($errors,'Phone number*','phone_number',$phone_number)}}
           {{textbox($errors,'Company*','company',$company)}}
           {{textbox($errors,'Max Travel Distance*','travel_distaince',$travel_distaince)}}
           {{textbox($errors,'Price Start From*','min_price',$min_price)}}
           {{textarea($errors,'Address*','address',$address)}}
  
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
  var options = {
        filebrowserImageBrowseUrl: '/laravel-filemanager?type=Images',
        filebrowserWindowWidth  : 800,
        filebrowserWindowHeight : 500,
        uiColor: '#eda208',
        removePlugins: 'save, newpage',
        allowedContent:true,
        fillEmptyBlocks:true,
        extraAllowedContent:'div, a, span, section, img'
      };
  CKEDITOR.replace('address', options);
</script>
@endsection
