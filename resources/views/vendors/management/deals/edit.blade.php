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
                  
                     <form method="post" id="dealForm" enctype="multipart/form-data">
                          @csrf
                          <div class="row">
                          <div class="col-lg-12">
                             {{textbox($errors,'Title*','title', $deal->title)}}
                           </div>
                          <div class="col-lg-6">
                              {{selectsimple($errors,"Deal's Life",'deal_life',[0 => 'Parmanenet',1 => 'According to Expiry Date'],$deal->deal_life)}}
                          </div>
                           <div class="col-lg-6">
                          <!-- {{datebox($errors,'Expiry Date','expiry_date', $deal->expiry_date)}} -->
                          <div class="form-group"><label>Expiry Date</label>
                                <input type="date" class="form-control valid" data-rule-required="false" id="datepicker" value="{{$deal->expiry_date}}" name="expiry_date"/>
                              </div>
                          </div>
                          <div class="col-lg-6">
                             {{textarea($errors,'Description*','description',$deal->description)}}
                          </div>
                           <div class="col-lg-6">
                            {{textarea($errors,'Deal Message Text*','message_text',$deal->message_text)}}
                          </div>
                           <div class="col-lg-6">
                              <!-- {{choosefile($errors,'Picture For This Deal*','image')}} -->
                            <div class="form-group">
                              <label class="label-file">Picture For This Deal*</label>
                               <input type="file" accept="image/*" onchange="ValidateSingleInput(this, 'image_src')" class="form-control" name="image">
                           </div>

                            </div>
                            <div class="col-md-6">
                             <div class="deal-container">
                              <img src="{{url($deal->image)}}" id="image_src" width="200">
                           </div>
                           </div>
                        </div>
                         <div class="form-group"><button id="dealFormBtn" class="cstm-btn">Save</button></div>
                   </form>                 
                 
                </div>
           </div>
         </div>
     </div>
 </div>
 
</div>
@endsection

@section('scripts')
<script src="{{url('/js/validations/dealValidation.js')}}"></script>
<script src="{{url('/js/validations/imageShow.js')}}"></script>
<script type="text/javascript">
  $("select.form-control").change(function() {
        var selectedCountry = $(this).children("option:selected").val();
        if(selectedCountry === '1') {
          if(!$('#datepicker').data('rule-required')) {
            $('#datepicker').data('rule-required', true);
            $('#datepicker').parent('.form-group').find('label').eq(1).css('display', 'block');    
          }
        } else {
          if($('#datepicker').data('rule-required')) {
            $('#datepicker').parent('.form-group').find('label').eq(1).css('display', 'none');
            $('#datepicker').data('rule-required', false);    
          }
        }
    });

  $("#datepicker").change(function() {
    $('#datepicker').parent('.form-group').find('label').eq(1).css('display', 'none');
  });
</script>
@endsection
