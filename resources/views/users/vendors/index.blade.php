@extends('users.layouts.layout')

@section('content')


<div class="page-header">
   <div class="page-block">
     <div class="row align-items-center">
		<div class="col-md-6">
			<div class="page-header-title">
			    <h5 class="m-b-10">Inviting Vendors</h5>
			</div>
		    <ul class="breadcrumb">
		        <li class="breadcrumb-item"><a href="{{url(route('admin_dashboard'))}}"><i class="feather icon-home"></i></a></li>
		        <li class="breadcrumb-item "><a href="javascript:void(0);">Inviting Vendors</a></li>
		    </ul>
		</div>

	   <div class="col-md-6">
	     <div class="btn-wrap text-right mb-3">
	        <a href="{{ route('users.invite.newVendor') }}" class="cstm-btn">Invite New Vendor</a>
	      </div>
	   </div>

    </div>
  </div>
</div>
@include('admin.error_message')
   <section class="content">
       <div class="row">
     <div class="col-xl-12 col-md-12 m-b-30">
    	<div class="content-main-wrap">
         
       		<table class="table">
       			<thead  class="bg-warning">
       			<tr>
       				<th>Sr.no</th><th>Business</th><th>Detail</th>
       			</tr>
       		</thead>
               @if(@sizeof($vendors))
       			@foreach($vendors as $k => $v)
                       <tr>
                       	  <td>{{$k + 1}}</td>
                       	  <td>{{$v->business_name}} ({{$v->category->label}})</td>
                       	  <td>
                       	  	<h4><b>Name :</b> {{$v->name}}</h4>
                       	  	<h4><b>Email :</b> {{$v->email}}</h4>
                       	  	<h4><b>Phone Number :</b> {{$v->phone_number}}</h4>
                       	  	<h4><b>Name :</b> {{$v->name}}</h4>
                       	  </td>
                       </tr>
       			@endforeach
       		@else
                       <tr>
                       	<td colspan="3" class="text-center"> No Data</td>
                       </tr>
       		@endif
       		</table>
       		{{$vendors->links()}}
       	</div>
       </div>
    </section>















@endsection



@section('scripts')
@endsection
