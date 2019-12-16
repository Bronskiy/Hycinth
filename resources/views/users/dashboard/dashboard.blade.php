@extends('users.layouts.layout')
@section('content')

<style type="text/css">
 
</style>

<div class="page-header">
    <div class="page-block">
        <div class="row align-items-center">
            <div class="col-md-12">
                <div class="page-header-title">
                    <h5 class="m-b-10">My Dashboard</h5>
                </div>
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url(route('admin_dashboard'))}}"><i class="feather icon-home"></i></a></li>
                    <li class="breadcrumb-item "><a href="javascript:void(0);">Dashboard</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>

       <section class="content">
      <div class="row">

        <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#firstUserModal">
  Launch demo modal
</button>

        <!-- [ rating list ] end-->
                                <div class="col-xl-12 col-md-12 m-b-30">
                                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                                        <li class="nav-item">
                                            <a class="nav-link active show" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="true">Upcoming Events</a>
                                        </li>
                                        
                                    </ul>
                                    <div class="tab-content" id="myTabContent">
                                      <div class="row">


@if(count($events) > 0)
                                      @foreach($events as $event)
                                        @php  
                                          $start_time = \Carbon\Carbon::now();  
                                          $finish_time = \Carbon\Carbon::parse($event->end_date); 
                                          $result = $start_time->diffInDays($finish_time, false);
                                        @endphp
                                      @if($result > 0)
                                         <div class="col-lg-6 m-b-30">
                                    <div class="card Upcoming-event-card">
                                        <div class="card-block">
                                          <div class="upcmg-evnt-head text-center">
                                          <a href="{{route('user_show_detail_event', $event->slug)}}"> <h2>Upcoming Events</h2>
                                          <h3>{{$event->title}}</h3>
                                        </a>
                                          <p>{{$event->description}}</p>

                                        </div>
                                        <div class="countdown-timer-container">
                                          <input type="hidden" value="{{$event->end_date}}" id="end_date_{{$event->id}}" />
                                        <ul class="count-down-timer">
                                          <li><span id="days_{{$event->id}}"></span>days</li>
                                          <li><span id="hours_{{$event->id}}"></span>Hours</li>
                                          <li><span id="minutes_{{$event->id}}"></span>Minutes</li>
                                          <li><span id="seconds_{{$event->id}}"></span>Seconds</li>
                                        </ul>

                                        <script type="text/javascript">
                                          setTimeout(() => {
                                            comingsoon('end_date_{{$event->id}}', 'days_{{$event->id}}', 'hours_{{$event->id}}', 'minutes_{{$event->id}}', 'seconds_{{$event->id}}');
                                          }, 500);
                                        </script>

                                      </div>
                                        </div>
                                      </div>
                                </div>
                                @endif
                                                    @endforeach
                                          @else
                                             No Events Found
                                            @endif
                                                  </div>
{{ $events->links() }}

                                        <!-- <div class="tab-pane fade active show" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                            <table class="table table-hover">
                                                
                                                <tbody>
                                                    
                                                     @foreach($events as $event)
                                                    @php  
                                                      $start_time = \Carbon\Carbon::now();  
                                                      $finish_time = \Carbon\Carbon::parse($event->end_date); 
                                                      $result = $start_time->diffInDays($finish_time, false);
                                                    @endphp
                                                  @if($result > 0)
                                                    <tr>
                                                        <td>
                                                          <a href="{{route('user_show_detail_event', $event->slug)}}">
                                                          <h4>{{ $event->title }} </h4>
                                                            <p class="m-0">{{ $event->description }}</p>
                                                          </a>
                                                        </td>
                                                        
                                                        <td class="text-right" style="white-space: nowrap;"><i class="fas fa-circle text-c-green f-10"></i> 
                                                         @if($result <= 0 && $event->status == 0)
                                        Expired {{ \Carbon\Carbon::parse($event->end_date)->format('Y-m-d') }}
                                      @elseif($result <= 0 && $event->status == 1)
                                        Done {{ \Carbon\Carbon::parse($event->end_date)->format('Y-m-d') }}
                                      @else
                                        {{ $result }} Days left
                                      @endif
                                                      </td>
                                                    </tr>
                                                    @endif
                                                    @endforeach
                                                </tbody>
                                            </table>
                                            {{ $events->links() }}
                                        </div> -->
                                    </div>
                                </div>
                                <!-- <div class="col-xl-4 col-md-12 m-b-30">

                                  <div class="card Upcoming-event-card">
                                        <div class="card-block">
                                          <div class="upcmg-evnt-head text-center">
                                          <h2>Upcoming Events</h2>
                                          <h3>Birthday Party</h3>
                                          <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry Iooking at its layout.It is a long established fact.</p>

                                        </div>
                                          <div class="countdown-timer-container">
                                            <div class="countdown">
                                            <div class="bloc-time hours" data-init-value="24">
                                              <span class="count-title">Hours</span>

                                              <div class="figure hours hours-1">
                                                <span class="top">2</span>
                                                <span class="top-back">
                                                  <span>2</span>
                                                </span>
                                                <span class="bottom">2</span>
                                                <span class="bottom-back">
                                                  <span>2</span>
                                                </span>
                                              </div>

                                              <div class="figure hours hours-2">
                                                <span class="top">4</span>
                                                <span class="top-back">
                                                  <span>4</span>
                                                </span>
                                                <span class="bottom">4</span>
                                                <span class="bottom-back">
                                                  <span>4</span>
                                                </span>
                                              </div>
                                            </div>

                                            <div class="bloc-time min" data-init-value="0">
                                              <span class="count-title">Minutes</span>

                                              <div class="figure min min-1">
                                                <span class="top">0</span>
                                                <span class="top-back">
                                                  <span>0</span>
                                                </span>
                                                <span class="bottom">0</span>
                                                <span class="bottom-back">
                                                  <span>0</span>
                                                </span>        
                                              </div>

                                              <div class="figure min min-2">
                                               <span class="top">0</span>
                                                <span class="top-back">
                                                  <span>0</span>
                                                </span>
                                                <span class="bottom">0</span>
                                                <span class="bottom-back">
                                                  <span>0</span>
                                                </span>
                                              </div>
                                            </div>

                                            <div class="bloc-time sec" data-init-value="0">
                                              <span class="count-title">Seconds</span>

                                                <div class="figure sec sec-1">
                                                <span class="top">0</span>
                                                <span class="top-back">
                                                  <span>0</span>
                                                </span>
                                                <span class="bottom">0</span>
                                                <span class="bottom-back">
                                                  <span>0</span>
                                                </span>          
                                              </div>

                                              <div class="figure sec sec-2">
                                                <span class="top">0</span>
                                                <span class="top-back">
                                                  <span>0</span>
                                                </span>
                                                <span class="bottom">0</span>
                                                <span class="bottom-back">
                                                  <span>0</span>
                                                </span>
                                              </div>
                                            </div>
                                          </div>
                                          </div>

                                        </div>
                                      </div>
                                </div> -->
      </div>
      <!-- /.row -->
    </section>












 










<!-- First User Modal -->
<div class="modal fade" id="firstUserModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Why are you here?</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="card-heading">
           <h3>Lets talk about your event.</h3>     
        </div>

        <div class="col-md-6">
           <div class="stepOne" id="stepWelcomeForm">

               <div class="row step1 stepForm">
                      @include('users.includes.welcome_popup.step1')
               </div>


              <div class="row step2 stepForm">
                 @include('users.includes.welcome_popup.step2')
              </div>


              <div class="row step3 stepForm">
                 @include('users.includes.welcome_popup.step3')
              </div>

               <div class="row step3 stepForm">
                 @include('users.includes.welcome_popup.step3')
              </div>

          </div>
                
        </div>

       
    </div>
      <!-- <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div> -->
    </div>
  </div>
</div>








@endsection


@section('scripts')

<script src="{{url('/js/comingsoon.js')}}"></script>
<script src="{{url('/js/setLatLong.js')}}"></script>



<script src="{{url('/js/welcome_popup.js')}}"></script>


<script type="text/javascript">
//     $('#event_categories').select2({ 
//     closeOnSelect: false
//    });

// $('#event_categories').on('select2:select', function (e) {
//     $(this).parent().find('label').eq(1).css('display', 'none');
// });

// $("body").on('change','select[name="event_type"]',function() {
//     const selectedEvent = $(this).children("option:selected").val();
//     $("body").find('#event_categories').empty();
//      $.ajax({
//         headers: { 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
//         url: "{{route('user_get_event_categories')}}",
//         type: "post",
//         dataType: "JSON",
//         data: { '_token': $('meta[name="csrf-token"]').attr('content'), 'id': selectedEvent },
//         success: function(res)
//         {
//           $.each(res.category_variation, function(key, value) {
//             $("body").find('#event_categories')
//             .append($("<option></option>")
//             .attr("value", value.category.id)
//             .text(value.category.label)); 
//           });
//         },
//         error: function(err) {
//             console.log(err);
//         }
//     });
// });


//steps.second














</script>






@endsection


