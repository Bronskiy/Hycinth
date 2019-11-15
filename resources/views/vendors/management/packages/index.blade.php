@extends('layouts.vendor')
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
        <div class="side-btns-wrap">
          <a href="{{url(route('vendor_packagesadd_management', $slug))}}" class="add_btn"><i class="fa fa-plus"></i></a>
        </div>
  </div>

    <div class="row">
       <div class="col-lg-12">
          <div class="card vendor-dash-card">
       <div class="card-header"><h3>{{$title}}  
        </h3></div>
           <div class="card-body">

  <div class="packages-wrap">
    <div class="row"> 
@foreach($packages as $k => $f)
  <div class="col-lg-4">

<div class="package-card">
  <div class="inn-card">
    <div class="title">
      <div class="icon">
        <i class="fas fa-hand-holding-usd"></i>
      </div>
      <span class="pkg-amount">{{ $f->amount }}</span>
    </div>
    <div class="content">
      <h3>{{$f->title}}</h3>
      <p>{!! $f->description !!}</p>
      <ul class="acrdn-action-btns">
          <li><a href="{{ route('vendor_packagesedit_management', ['slug' => $category->slug, 'id' => $f->id]) }}" class="action_btn dark-btn"><i class="fas fa-pencil-alt"></i></a></li>
          <li><a href="{{ route('vendor_packages_delete_management', ['slug' => $category->slug, 'id' => $f->id]) }}" class="action_btn danger-btn"><i class="fas fa-trash-alt"></i></a></li>
        </ul>
    </div>
  </div>
</div> 




  </div>
  <!-- ========================= -->

   <!-- ========================= -->

  @endforeach
</div> 
</div>

</div>
</div>
</div>
</div>
</div>






{{$packages->links()}}
   
@endsection
