
@extends('users.layouts.layout')
@section('content')

<div class="page-header">
    <div class="page-block">
        <div class="row align-items-center">
            <div class="col-md-12">
                <div class="page-header-title">
                    <h5 class="m-b-10">Create Event</h5>
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
      <div class="card-body">
        <div class="row">
          <div class="col-md-12">
           {{textbox($errors, 'Title*', 'title')}}
         </div>
         <div class="col-md-12">
           {{textarea($errors, 'Description*', 'description')}}
           </div>
         <div class="col-md-6">
           {{datebox($errors, 'Start Date*', 'start_date')}}
           </div>
         <div class="col-md-6">
           {{datebox($errors, 'End Date*', 'end_date')}}
           </div>
           <div class="col-md-6">
           {{textbox($errors, 'Min Person*', 'min_person')}}
           </div>
           <div class="col-md-6">
           {{textbox($errors, 'Max Person*', 'max_person')}}
           </div>
         <div class="col-md-12">
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
            <label>Categories*</label>
               <select class="form-control select2" id="event_categories" multiple="multiple" name="event_categories[]">
               </select>
            </div>
           <!-- {{textbox($errors, 'Categories*', 'categories')}} -->
         </div>
      </div>
    </div>

      <div class="card-footer">
        <button type="submit" id="UserEventFormBtn" class="btn btn-primary">Create</button>
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
<script src="{{url('/js/setLatLong.js')}}"></script>
<script src="{{url('/js/validations/userEventValidation.js')}}"></script>
<script type="text/javascript">
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
</script>
@endsection


