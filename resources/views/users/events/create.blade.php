
@extends('users.layouts.layout')
@section('content')

<div class="page-header">
    <div class="page-block">
        <div class="row align-items-center">
            <div class="col-md-12">
                <div class="page-header-title">
                    <h5 class="m-b-10">My new  Create Event</h5>
                </div>
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url(route('admin_dashboard'))}}"><i class="feather icon-home"></i></a></li>
                    <li class="breadcrumb-item "><a href="{{ route('user_events') }}">Events</a></li>
                    <li class="breadcrumb-item "><a href="javascript:void(0)">Create Event</a></li>
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
       @include('admin.error_message')
 
            <div class="card-body">



<div class="col-md-12">

  <form role="form" method="post" id="UserEventForm" enctype="multipart/form-data">
    @csrf
  
        <div class="row">
          <div class="col-md-12">
           {{textbox($errors, 'Title*', 'title')}}
         </div>
         <div class="col-md-12">
           {{textarea($errors, 'Description*', 'description')}}
           </div>

           <div class="col-md-6">
           {{textarea($errors, 'Long Description*', 'long_description')}}
           </div>


         <div class="col-md-6">
           {{datebox($errors, 'Start Date*', 'start_date')}}
           </div>
         <div class="col-md-6">
           {{datebox($errors, 'End Date*', 'end_date')}}
           </div>



 


         <div class="col-md-6">

             <div class="form-group">
                 <label>Event Anticipated Start Time </label>
                    <input type="text" id="start_time" autocomplete="false"  data-format="hh:mm A" class="input-small form-control" name="start_time" value="{{old('start_time')}}">
                    <p class="error">{{$errors->first('start_time')}}</p>
              </div>
           </div>

           <div class="col-md-6">
              <div class="form-group">
                 <label>Event Anticipated End Time </label>
                    <input type="text" id="end_time" autocomplete="false" value="{{old('end_time')}}" data-format="hh:mm A" class="input-small form-control" name="end_time">
                    <p class="error">{{$errors->first('end_time')}}</p>
              </div>
           </div>





           <div class="col-md-6">
           {{textbox($errors, 'Min Person*', 'min_person')}}
           </div>
           <div class="col-md-6">
           {{textbox($errors, 'Max Person*', 'max_person')}}
           </div>
         <div class="col-md-6">
           {{textbox($errors, 'Address*', 'location')}}
           </div>
         <div class="col-md-6" style="display: none">
           {{textbox($errors, 'Latitude*', 'latitude')}}
           </div>
         <div class="col-md-6" style="display: none">
           {{textbox($errors, 'Longitude*', 'longitude')}}
         </div>
         <div class="col-md-6">
           <div class="form-group">
            <label>Event Type*</label>
               <select class="form-control select2" id="event_type" name="event_type">
                  <option value="">Select</option>
                  @foreach($events as $event)
                  <option value="{{$event->id}}">{{$event->name}}</option>
                  @endforeach
               </select>
            </div>
         </div>
         <div class="col-md-6">
          <div class="form-group">
            <label>Select your Vendor Categories*</label>
               <select class="form-control select2" id="event_categories" multiple="multiple" name="event_categories[]">
               </select>
            </div>
           <!-- {{textbox($errors, 'Categories*', 'categories')}} -->
         </div>








           <div class="col-md-6">
           {{textbox($errors, 'Event Budget*', 'event_budget')}}
           </div>

            <div class="col-md-6">
           {{textbox($errors, 'Seasons*', 'seasons')}}
           </div>

          <div class="col-md-12">
              <!-- {{choosefile($errors, 'Event Image*', 'event_picture')}} -->
            <div class="form-group ">
              <div class="profile-image">
                <label class="label-file">Event Image*</label>
                         <input type="file" required name="event_picture" accept="image/*" onchange="ValidateSingleInput(this, 'image_src')" id="event_picture" class="form-control">
                         
                         <!-- <img id="image_src" class="img-radius" style="display: none; width: 100px; height: 100px; margin-top: 6px;" src="{{ asset('/images/user.jpg') }}"> -->

                          @if ($errors->has('event_picture'))
                              <div class="error">{{ $errors->first('event_picture') }}</div>
                          @endif
                   </div>
               </div>
           </div>

         <div class="col-md-12">
          <div id="AddRemoveColorEvent">
            <div class="form-group"><label class="control-label">Colour*</label>
              <div class="pick-color-field-wrap row">
                <div class="element col-lg-3 col-md-6" id="div_1">              
                  <div class="form-group">
                    <input type="color" class="ColorGet" style="width: 46px; margin-left: -2px;">
                    <input type="text" readonly value="{{old('colour')}}" class="form-control ColourSelect" name="colour[]">
                    <ul class="acrdn-action-btns"><li><a href="javascript:void(0)" id="AddNewColorEvent" class="action_btn primary-btn" data-toggle="tooltip" title="" data-original-title="Add new Color"><i class="fas fa-plus"></i></a></li></ul>
                  </div>
                </div>
              </div>
             </div>
            </div>            
          </div>            

<div class="col-md-12">
   <div class="form-group ">
 <img src="" id="image_src" style="display: none;" width="120">
</div>
</div>






  <div class="col-md-12">
                <div class="custom-control custom-checkbox">
                  <input type="checkbox" class="custom-control-input" id="customCheck1" required name="agree" value="1">
                  <label class="custom-control-label" for="customCheck1">I agree to the Terms and Conditions for sharing my Event details with vendors.</label>
                </div>
            </div>



      </div>















      <div class="card-footer cstm-card-ftr">
        <button type="submit" id="UserEventFormBtn" class="cstm-btn">Create</button>
      </div>
 </form>


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
<script src="{{url('clockface/js/clockface.js')}}" type="text/javascript"></script>
<script src="{{url('/js/setLatLong.js')}}"></script>
<script src="{{url('/js/validations/userEventValidation.js')}}"></script>
<script src="{{url('/js/validations/imageShow.js')}}"></script>

<script type="text/javascript">

$('#start_time').clockface();
$('#end_time').clockface();

  $('#event_categories').select2({ 
    closeOnSelect: false
   });

$('#event_categories').on('select2:select', function (e) {
    $(this).parent().find('label').eq(1).css('display', 'none');
});

$('select[name="event_type"]').change(function() {
    const selectedEvent = $(this).children("option:selected").val();
    $('#event_categories').empty();
     $.ajax({
        headers: { 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
        url: "{{route('user_get_event_categories')}}",
        type: "post",
        dataType: "JSON",
        data: { '_token': $('meta[name="csrf-token"]').attr('content'), 'id': selectedEvent },
        success: function(res)
        {
          $.each(res.category_variation, function(key, value) {
            $('#event_categories')
            .append($("<option></option>")
            .attr("value", value.category.id)
            .text(value.category.label)); 
          });
        },
        error: function(err) {
            console.log(err);
        }
    });
});

// Get Current color and append the value in next input
function loadColorJQ() {
    $('.ColorGet').on('change', function() { 
      var val = $( this ).val();
      $( this ).next().val(val);
    });
  }
loadColorJQ();

// Add Remove multiple color for event
$(document).ready(function(){
  $("#AddNewColorEvent").click(function(){
  // Finding total number of elements added
  var total_element = $(".element").length;
  var lastid = $(".element:last").attr("id");
  var split_id = lastid.split("_");
  var nextindex = Number(split_id[1]) + 1;

  var max = 4;
  // Check total number elements
  if(total_element < max ){
   // Adding new div AddRemoveColorEvent after last occurance of element class
   $(".element:last").after("<div class='element col-lg-3 col-md-6' id='div_"+ nextindex +"'></div>");
 
   // Adding element to <div>
   $("#div_" + nextindex).append('<div class="form-group"><input type="color" class="ColorGet" style="width: 46px; margin-left: -2px;"><input type="text" readonly value="{{old('colour')}}" class="form-control ColourSelect" name="colour[]"> <ul class="acrdn-action-btns"><li><a href="javascript:void(0)" id="remove_'+nextindex+'" class="action_btn danger-btn remove_color_event" data-toggle="tooltip" title="" data-original-title="Delete"><i class="fas fa-trash-alt"></i></a></li></ul></div>'); 
  }
  // Load get solor function to select color
  loadColorJQ(); 
 });

  // Remove element
  $("#AddRemoveColorEvent").on('click','.remove_color_event',function(){
    var id = this.id;
    var split_id = id.split("_");
    var deleteindex = split_id[1];

    // Remove <div> with id
    $("#div_" + deleteindex).remove();
  }); 
});
</script>
@endsection


