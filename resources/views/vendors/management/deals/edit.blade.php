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
                <li class="breadcrumb-item"><a href="{{url(route($addLink, $slug))}}">List</a></li>
                <li class="breadcrumb-item"><a href="javascript:void(0)">Add</a></li>
            </ul>
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
                  
                     <form method="post"  enctype="multipart/form-data">
                          @csrf
                          <div class="row">
                          <div class="col-lg-6">
                             {{textbox($errors,'Title*','title',$deal->title)}}
                           </div>
                          <div class="col-lg-6">
                          {{datebox($errors,'Expiry Date','expiry_date',$deal->expiry_date)}}
                        </div>
                            <div class="col-lg-6">
                             {{textarea($errors,'Description*','description',$deal->description)}}
                       </div>
                       <div class="col-lg-6">
                            {{textarea($errors,'Deal Message Text*','message_text',$deal->message_text)}}
                          </div>
                           <div class="col-lg-6">
                              {{choosefile($errors,'Picture For This Deal*','image')}}
                            </div>
                            <div class="col-md-6">
                             <div class="deal-container">
                              <img src="{{url($deal->image)}}">
                           </div>
                           </div>
                        </div>
                         <div class="form-group"><button class="cstm-btn">Save</button></div>
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
$('form').validate({
      onfocusout: function (valueToBeTested) {
        $(valueToBeTested).valid();
      },

      highlight: function(element) {
        $('element').removeClass("error");
      },

      rules: {
        
        "title": {
            required: true,
            character_with_space: true
            
        },
         "description": {
            required: true,
            character_with_space: true
           
        },
        'message_text': {
            required: true
             
        },
        valueToBeTested: {
            required: true
        }

      },
});

</script>
@endsection
