@extends('users.layouts.layout')
@section('content')

<div class="page-header">
                        <div class="page-block">
                            <div class="row align-items-center">
                                <div class="col-md-12">
                                    <div class="page-header-title">
                                        <h5 class="m-b-10"></h5>
                                    </div>
                                    <ul class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="{{url(route('user_dashboard'))}}"><i class="feather icon-home"></i></a></li>
                                        <li class="breadcrumb-item"><a href="javascript:void(0)">Profile</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
 </div>

  <section class="content">
      <div class="row">
        <div class="col-12">
          <div class="card">
            <!-- /.card-header -->
 
            <div class="card-body">

              @include('admin.error_message')

<div class="row">

<div class="col-md-12">
 <h4>Chats</h4>
 @if(sizeof(Auth::user()->chats))

 <ul>
   
@foreach(Auth::user()->chats as $c)
   <li>
          <img src="{{ProfileImage($c->deals->Business->profileImage->keyValue)}}" width="30">
          <h4>{{$c->deals->title}} ({{$c->deals->Business->title}}) </h4>
          <a href="{{url(route('deal_discount_chatMessages',$c->id))}}">View</a>
   </li>
@endforeach
 </ul>



 @endif


</div>
 



</div>

              
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
          <!-- /.card -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>

    
     
 
     
@endsection

 
