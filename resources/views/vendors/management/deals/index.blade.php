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
                <li class="breadcrumb-item"><a href="javascript:void(0)">List</a></li>
            </ul>
        </div>
        <div class="side-btns-wrap">
          <a href="{{url(route('vendor_add_deals_management',$slug))}}" class="add_btn"><i class="fa fa-plus"></i></a>
        </div>
  </div>

@include('vendors.errors')
 



    <div class="row">
       <div class="col-lg-12">
          <div class="card vendor-dash-card">
            <div class="card-header">
              <h3>{{$title}} </h3>
            </div>
                <div class="card-body">

                  @if($dealCount == 0)

                   <div class="col-md-12">
                    <div class="alert alert-warning" role="alert">Deals & Discount are not assigned to this Category.</div>
                  </div>

                  @endif

           @foreach($deals as $d)
               <div class="col-md-12"> 
                   <div class="row deals">
                       <div class="col-md-4"><img src="{{url($d->image)}}" class="img-responsive"></div>
                       <div class="col-md-8">
                            <h4>{{$d->title}}</h4>
                            <p>{{$d->description}}</p>

                           <!--  <ul>
                               
                              <li><a href="{{url(route('vendor_edit_deals_management',[$slug,$d->id]))}}">Edit</a></li>
                              <li><a href="{{url(route('vendor_delete_deals_management',[$slug,$d->id]))}}">Delete</a></li>
                            </ul> -->
                            <ul class="acrdn-action-btns single-row">
          <li><a href="{{url(route('vendor_edit_deals_management',[$slug,$d->id]))}}" class="action_btn dark-btn"><i class="fas fa-pencil-alt"></i></a></li>         
          <li><a onclick="deleteItem(this)" href="javascript:void(0)" data-delurl="{{url(route('vendor_delete_deals_management',[$slug,$d->id]))}}" class="action_btn danger-btn"><i class="fas fa-trash-alt"></i></a></li>   
        </ul>
                       </div>
                   </div>
               </div>

          @endforeach

          {{$deals->links()}}
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
