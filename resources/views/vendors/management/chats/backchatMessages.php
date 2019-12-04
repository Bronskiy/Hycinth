@extends('layouts.vendor')
@section('vendorContents')

<div class="container-fluid">

 <div class="page_head-card">
    <div class="page-info">
            <div class="page-header-title">
                <h3 class="m-b-10">{{$title}}</h3>
            </div>
            <ul class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{ route('vendor_dashboard') }}"><i class="fa fa-home" aria-hidden="true"></i></a></li>
                <li class="breadcrumb-item"><a href="javascript:void(0)">Amenities</a></li>
            </ul>
        </div>
        <div class="side-btns-wrap">
         
        </div>
  </div>

@include('vendors.errors')

 

    <div class="row">
       <div class="col-lg-12">
          <div class="card vendor-dash-card">
          <div class="card-header"><h3>{{$title}}</h3></div>
           <div class="card-body">
 
               <div class="col-md-12">
                  <div class="chat-heading row">
                   <img src="{{ProfileImage($chats->deals->Business->profileImage->keyValue)}}" width="30">
                   <h4>{{$chats->deals->title}} ({{$chats->deals->Business->title}}) </h4> 
                  </div>


                  <div class="row" id="ChatMessages" data-action="{{url(route('getMessageOfBusiness',[$business->category->slug,$chats->id]))}}">

                        

                  </div>

                   
                          <form class="row" id="sendMessage" action="{{url(route('dealAndDiscountSendMessages',$chats->id))}}">
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
     </div>
   </div>
</div>















@endsection


@section('scripts')
 <script src="{{url('/js/chats/vendor_chat.js')}}"></script>
<script type="text/javascript">
 

</script>






@endsection