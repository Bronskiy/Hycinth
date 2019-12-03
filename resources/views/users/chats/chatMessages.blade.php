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
  <div class="chat-heading row">
   <img src="{{ProfileImage($chats->deals->Business->profileImage->keyValue)}}" width="30">
   <h4>{{$chats->deals->title}} ({{$chats->deals->Business->title}}) </h4> 
  </div>


  <div class="row" id="ChatMessages">

          @foreach($chats->ChatMessages as $msg)

              @if($msg->sender_id == Auth::user()->id)

                    <div class="myMessageBlock">
                        <img src="{{ProfileImage($msg->sender->profile_image)}}" width="30">
                        <p>{!! $msg->message !!}</p> 
                    </div>


              @elseif($msg->receiver_id == Auth::user()->id)

                    <div class="myMessageBlock">
                        <img src="{{ProfileImage($msg->receiver->profile_image)}}" width="30"> 
                        <p>{!! $msg->message !!}</p> 
                    </div>

              @else
                   
                    <div class="vendorMessageBlock">
                        <img src="{{ProfileImage($chats->deals->Business->profileImage->keyValue)}}" width="30"> 
                        <p>{!! $msg->message !!}</p> 
                    </div>


              @endif


          @endforeach




  </div>

   
          <form class="row" id="sendMessage" action="{{url(route('deal_discount_sendMessages',$chats->id))}}">
              <div class="col-md-10">
                    <textarea name="message" placeholder="Write message.." class="form-control"></textarea>
              </div>

              <div class="col-md-2">
                    <button class="btn cstm-btn">Send</button>
              </div>
          </form>

   

  

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

@section('scripts')
<script src="{{url('/js/chats/chat.js')}}"></script>
 
@endsection

