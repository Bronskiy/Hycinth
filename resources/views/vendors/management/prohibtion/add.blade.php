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
                <li class="breadcrumb-item"><a href="{{url(route($addLink ,$slug))}}">List</a></li>
                <li class="breadcrumb-item"><a href="javascriptLvoid(0)">Add</a></li>
            </ul>
        </div>
  </div>

@include('vendors.errors')







    <div class="row">
       <div class="col-lg-12">
          <div class="card vendor-dash-card">
            <div class="card-header"><h3>{{$title}}</h3></div>
                <div class="card-body">

 

     <div class="col-md-12"> 
          <form method="post">
			@csrf
			    <input type="hidden" name="type" value="prohibtion">
			    {{textarea($errors,'Prohibtion & Restrictions','prohibtion',$prohibtion)}}
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
  CKEDITOR.replace('prohibtion');
</script>
@endsection
