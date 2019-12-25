  <div class="sidebar-header">
     <h3>User Stats Bar</h3>
     <a href="javascript:void(0);" class="close-sidebar"><i class="fas fa-times-circle"></i></a>
  </div>

    @if(Auth::check() && Auth::user()->role == 'user')
       @php  
              $currentUser = \App\User::with([
                   'UpcomingUserEvents' => function($t){ $t->limit(2); }
              ])->where('id',Auth::user()->id)->first();
       @endphp

      @if($currentUser->UpcomingUserEvents->count() > 0)
        @foreach($currentUser->UpcomingUserEvents as $loopingEvents)

          <div class="sidebar-body">
           <div class="event-status-info">
           <div class="row">  
           <div class="col-3">    
            <a target="_blank" href="{{route('user_show_detail_event', $loopingEvents->slug)}}">
            <figure class="side-upcm-img"><img src="{{ $loopingEvents->event_picture }}">          
            </figure></a>
           </div>
           <div class="col-9">  
            <a target="_blank" href="{{route('user_show_detail_event', $loopingEvents->slug)}}">
            <h3 class="evt-overlay-heading">{{ $loopingEvents->title }}</h3>
            </a>
             <div class="start-ending-date">
              <div class="row">
                <div class="col-6">
                  <label>Start Date</label>
                  <p><span><i class="fas fa-calendar-alt"></i></span> {{date('d-m-Y',strtotime($loopingEvents->start_date))}}</p>
                </div>
                <div class="col-6">
                  <label>End Date</label>
                  <p><span><i class="fas fa-calendar-alt"></i></span> {{date('d-m-Y',strtotime($loopingEvents->end_date))}}</p>
                </div>
              </div>
            </div>
           </div>
           </div>
            <div class="countdown-timer-container">
                                               
              <ul class="count-down-timer">
                     <input type="hidden" value="{{$loopingEvents->start_date}}" id="start_date_{{$loopingEvents->id}}" />
                     <li><span id="days_{{$loopingEvents->id}}"></span>days</li>
                     <li><span id="hours_{{$loopingEvents->id}}"></span>Hours</li>
                     <li><span id="minutes_{{$loopingEvents->id}}"></span>Minutes</li>
                     <li><span id="seconds_{{$loopingEvents->id}}"></span>Seconds</li>
               </ul>

                <script type="text/javascript">
                  setTimeout(() => {
                  comingsoon('start_date_{{$loopingEvents->id}}', 'days_{{$loopingEvents->id}}', 'hours_{{$loopingEvents->id}}', 'minutes_{{$loopingEvents->id}}', 'seconds_{{$loopingEvents->id}}');
                  }, 1000);
                </script>                              

            </div>
           
           </div>
          </div>
        @endforeach  
      @else
      <div class="message-wrap">
      <div class="alert alert-info" role="alert">
  Didn't found any upcoming Events Click <a href="">Add New Event</a> for creating a one
</div>
</div>
          
      @endif
    @endif  