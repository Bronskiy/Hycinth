@extends('layouts.vendor')
@section('vendorContents')

 <div class="container-fluid">


<!-- header -->

<div class="page_head-card">
    <div class="page-info">
            <div class="page-header-title">
                <h3 class="m-b-10">Shop :: Products </h3>
            </div>
            <ul class="breadcrumb">
              <li class="breadcrumb-item"><a href="http://49.249.236.30:6633/vendors"><i class="fa fa-home" aria-hidden="true"></i></a></li>
                <li class="breadcrumb-item"><a href="javascript:void(0)">List</a></li>
            </ul>
        </div>
        <div class="side-btns-wrap">
        <a href="{{url(route('vendor.shop.products.create'))}}" class="add_btn"><i class="fa fa-plus"></i></a>
        </div>
  </div>


<!-- header -->













    <div class="row">
       <div class="col-lg-12">
          <div class="card vendor-dash-card">
                  
		           <div class="card-body">
                       <table class="table">
                       	<thead>
                       		<tr>
                       			<th>Sr.no</th>
                       			<th>Sr.no</th>
                       			<th>Sr.no</th>
                       			<th>Sr.no</th>
                       			<th>Sr.no</th>
                       			<th>Sr.no</th>
                       		</tr>
                       	</thead>
                       	
                       </table>



		          </div>
         </div>
     </div>
   </div>
 </div>









@endsection