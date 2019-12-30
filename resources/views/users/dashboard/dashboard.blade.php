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

   
        <!-- [ rating list ] end-->
                                <div class="col-xl-12 col-md-12">
                                  <div class="content-main-wrap">
                                   <!--  <ul class="nav nav-tabs" id="myTab" role="tablist">
                                        <li class="nav-item">
                                            <a class="nav-link active show" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="true">Upcoming Events</a>
                                        </li>
                                        
                                    </ul>
                                    <div class="tab-content main-outer-tab" id="">
                                      <div class="row">


                             @if(count($events) > 0)
                                      @foreach($events as $event)
                                        @php  
                                          $start_time = \Carbon\Carbon::now();  
                                          $finish_time = \Carbon\Carbon::parse($event->end_date); 
                                          $result = $start_time->diffInDays($finish_time, false);
                                        @endphp
                                      @if($result > 0)
                                         <div class="col-lg-6">
                                    <div class="card Upcoming-event-card">
                                        <div class="card-block">
                                          <div class="upcmg-evnt-head">

                                             @if($event->event_picture !="")
                                       <figure class="coming-event-img">
                                        <img src="{{url($event->event_picture)}}">
                                      </figure>
                                        @endif

                                        <div class="coming-evet-des">

                                          <a href="{{route('user_show_detail_event', $event->slug)}}"> <h2>Upcoming Events</h2>
                                      
                                          <h3>{{$event->title}}</h3>
                                        </a>
                                          <p>{{$event->description}}</p>
                                        </div>

                                        </div>
                                        <div class="countdown-timer-container">
                                         <ul class="count-down-timer">
                                               <input 
                                               type="hidden" 
                                               value="{{$event->start_date}}" 
                                               id="start_date_{{$event->id}}"
                                               class="timerWatch" 
                                               data-days="#days_{{$event->id}}"
                                               data-hours="#hours_{{$event->id}}"
                                               data-minutes="#minutes_{{$event->id}}"
                                               data-seconds="#seconds_{{$event->id}}"
                                                />
                                               <li><span id="days_{{$event->id}}"></span>days</li>
                                               <li><span id="hours_{{$event->id}}"></span>Hours</li>
                                               <li><span id="minutes_{{$event->id}}"></span>Minutes</li>
                                               <li><span id="seconds_{{$event->id}}"></span>Seconds</li>
                                         </ul>


                                        

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
 
                                    </div> -->


  <!--   Upcoming event -->
  <div class="card-media  mt-4 wow bounceInRight" data-wow-delay="1000ms">
    <!-- media container -->
    <div class="card-media-object-container">
      <div class="card-media-object" style="background-image: url(https://s9.postimg.cc/y0sfm95gv/prince_f.jpg);">
        <div class="date-ribbon"><h2>Aug</h2> <h1>28</h1></div>
      </div>
      <span class="card-media-object-tag subtle">Selling Fast</span>
      <ul class="card-media-object-social-list">
        <li>
          <img src="https://s10.postimg.cc/3rjjbzcvd/profile_f.jpg" class="">
        </li>
        <li>
          <img src="https://s16.postimg.cc/b0j0djh79/profile_0_f.jpg" class="">
        </li>
        <li class="card-media-object-social-list-item-additional">
          <span>+2</span>
        </li>
      </ul>
    </div>
    <!-- body container -->
    <div class="card-media-body">
      <div class="card-media-body-top">
        <span class="subtle">Mon, APR 09, 7:00 PM</span>
        <div class="card-media-body-top-icons u-float-right">
          <svg fill="#888888" height="16" viewBox="0 0 24 24" width="16" xmlns="http://www.w3.org/2000/svg">
            <path d="M0 0h24v24H0z" fill="none"/>
            <path d="M18 16.08c-.76 0-1.44.3-1.96.77L8.91 12.7c.05-.23.09-.46.09-.7s-.04-.47-.09-.7l7.05-4.11c.54.5 1.25.81 2.04.81 1.66 0 3-1.34 3-3s-1.34-3-3-3-3 1.34-3 3c0 .24.04.47.09.7L8.04 9.81C7.5 9.31 6.79 9 6 9c-1.66 0-3 1.34-3 3s1.34 3 3 3c.79 0 1.5-.31 2.04-.81l7.12 4.16c-.05.21-.08.43-.08.65 0 1.61 1.31 2.92 2.92 2.92 1.61 0 2.92-1.31 2.92-2.92s-1.31-2.92-2.92-2.92z"/>
          </svg>
          <svg fill="#888888" height="16" viewBox="0 0 24 24" width="16" xmlns="http://www.w3.org/2000/svg">
            <path d="M17 3H7c-1.1 0-1.99.9-1.99 2L5 21l7-3 7 3V5c0-1.1-.9-2-2-2z"/>
            <path d="M0 0h24v24H0z" fill="none"/>
          </svg>
        </div>
      </div>
      <span class="card-media-body-heading">This Thing Called Life: A Celebration of Prince and His Legacy at MEZZANINE SF</span>
      <div class="card-media-body-supporting-bottom">
        <span class="card-media-body-supporting-bottom-text subtle">Mezzanine, San Francisco, CA</span>
        <span class="card-media-body-supporting-bottom-text subtle u-float-right">Free &ndash; $30</span>
      </div>
      <div class="card-media-body-supporting-bottom card-media-body-supporting-bottom-reveal">
        <span class="card-media-body-supporting-bottom-text subtle">#Music #Party</span>
        <a href="#/" class="card-media-body-supporting-bottom-text card-media-link u-float-right">VIEW TICKETS</a>
      </div>
    </div>
  </div>
  
  <div class="card-media wow bounceInRight" data-wow-delay="1500ms">
    <!-- media container -->
    <div class="card-media-object-container">
      <div class="card-media-object" style="background-image: url(https://s16.postimg.cc/x8m99xtgl/tyco_f.jpg);">
        <div class="date-ribbon"><h2>Aug</h2> <h1>30</h1></div>
      </div>
      <ul class="card-media-object-social-list">
        <li>
          <img src="https://s13.postimg.cc/c5aoiq1w7/stock3_f.jpg" class="">
        </li>
      </ul>
    </div>
    <!-- body container -->
    <div class="card-media-body">
      <div class="card-media-body-top">
        <span class="subtle">Mon, APR 09, 7:00 PM</span>
        <div class="card-media-body-top-icons u-float-right">
          <svg fill="#888888" height="16" viewBox="0 0 24 24" width="16" xmlns="http://www.w3.org/2000/svg">
            <path d="M0 0h24v24H0z" fill="none"/>
            <path d="M18 16.08c-.76 0-1.44.3-1.96.77L8.91 12.7c.05-.23.09-.46.09-.7s-.04-.47-.09-.7l7.05-4.11c.54.5 1.25.81 2.04.81 1.66 0 3-1.34 3-3s-1.34-3-3-3-3 1.34-3 3c0 .24.04.47.09.7L8.04 9.81C7.5 9.31 6.79 9 6 9c-1.66 0-3 1.34-3 3s1.34 3 3 3c.79 0 1.5-.31 2.04-.81l7.12 4.16c-.05.21-.08.43-.08.65 0 1.61 1.31 2.92 2.92 2.92 1.61 0 2.92-1.31 2.92-2.92s-1.31-2.92-2.92-2.92z"/>
          </svg>
          <svg fill="#888888" height="16" viewBox="0 0 24 24" width="16" xmlns="http://www.w3.org/2000/svg">
            <path d="M17 3H7c-1.1 0-1.99.9-1.99 2L5 21l7-3 7 3V5c0-1.1-.9-2-2-2z"/>
            <path d="M0 0h24v24H0z" fill="none"/>
          </svg>
        </div>
      </div>
      <span class="card-media-body-heading">DAY // NIGHT - Tycho (Live) w/ Gold Panda, Com Truise + More at 1015 Folsom</span>
      <div class="card-media-body-supporting-bottom">
        <span class="card-media-body-supporting-bottom-text subtle">1015 Folsom, San Francisco, CA</span>
        <span class="card-media-body-supporting-bottom-text subtle u-float-right">$25 &ndash; $80</span>
      </div>
      <div class="card-media-body-supporting-bottom card-media-body-supporting-bottom-reveal">
        <span class="card-media-body-supporting-bottom-text subtle">#Music #Performance</span>
        <a href="#/" class="card-media-body-supporting-bottom-text card-media-link u-float-right">VIEW MORE</a>
      </div>
    </div>
  </div>

<!-- ============================== -->
                          

                                </div>
                              </div>
                                
      </div>
      <!-- /.row -->
    </section>












 

<!-- First User Modal -->
<div class="modal fade" id="firstUserModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">        
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
 
      <div class="modal-body">
        
        <div class="row">
          <div class="col-lg-5">
            <figure class="about-event-img">
              <img src="{{ asset('/frontend/images/event-form-img.png') }}">
              <div class="form-img-cont text-center">
              <h2 class="modal-title">Why are you here?</h2>
              <p>Congratulation for using our Platform</p>
            </div>
            </figure>
          </div>
          <div class="col-lg-7">
            <div class="first-user-form">
            

            <section class="multi_step_form haveFiveSteps">
              <div id="msform"> 
                <ul id="progressbar">
                  <li class="step-item stp-1 active"></li>
                  <li class="step-item stp-2 "></li>
                  <li class="step-item stp-3 "></li>
                  <li class="step-item stp-4 "></li>
                  <li class="step-item stp-5 "></li>
                </ul>
              </div>
            </section>
            <input type="hidden" name="progressbar" value="1">

            <div class="card-heading">
                       <h3>Lets talk about your event.</h3>     
            </div>

            <div class="step1 stepForm">
                      @include('users.includes.welcome_popup.stepOne')
           </div>

            <div class="step2 stepForm">
                 @include('users.includes.welcome_popup.stepSecond')
              </div>


              <div class="step3 stepForm">
                 @include('users.includes.welcome_popup.step3')
              </div>

               <div class="step4 stepForm">
                 @include('users.includes.welcome_popup.step4')
              </div>


               <div class="step5 stepForm">
                 @include('users.includes.welcome_popup.step5')
              </div>



      </div>
    </div>
  </div>
       
    </div>
  </div>
</div>
</div>



 
<input type="hidden" id="login_count" value="{{Auth::user()->login_count}}">


@endsection


@section('scripts')
<script src="{{url('clockface/js/clockface.js')}}" type="text/javascript"></script>
<script src="{{url('/js/comingsoon.js')}}"></script>
<script src="{{url('/js/setLatLong.js')}}"></script>
<script src="{{url('/js/welcome_popup.js')}}"></script>
<script type="text/javascript">
 
 var login_count = $("body").find('#login_count').val();

 if(parseInt(login_count) == 0){
      $('#firstUserModal').modal('show');
 }




 </script>






@endsection


