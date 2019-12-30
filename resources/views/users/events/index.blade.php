@extends('users.layouts.layout')

@section('content')

<div class="page-header">
<div class="page-block">
<div class="row align-items-center">
<div class="col-md-6">
<div class="page-header-title">
<h5 class="m-b-10">My Events</h5>
</div>
<ul class="breadcrumb">
<li class="breadcrumb-item"><a href="{{url(route('admin_dashboard'))}}"><i class="feather icon-home"></i></a></li>
<li class="breadcrumb-item "><a href="javascript:void(0);">Events</a></li>
</ul>
</div>

<div class="col-md-6">
<div class="btn-wrap text-right mb-3">
<a href="{{ route('user_show_create_event') }}" class="cstm-btn">Create Event</a>
</div>
</div>

</div>
</div>
</div>
@include('admin.error_message')
<section class="content">
<div class="row">

<!-- [ rating list ] end-->
    <div class="col-xl-12 col-md-12 m-b-30">
    	<div class="content-main-wrap">
        <ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item">
                <a href="{{url(route('user_events'))}}" class="nav-link  {{$status == 'all' ? 'active' : ''}} show">All Events</a>
            </li>
            <li class="nav-item">
                <a href="{{url(route('user_event','upcoming'))}}" class="nav-link {{$status == 'upcoming' ? 'active' : ''}}" id="upcoming-tab">Upcoming Events</a>
            </li>
            <li class="nav-item">
                <a href="{{url(route('user_event','ongoing'))}}" class="nav-link {{$status == 'ongoing' ? 'active' : ''}}" id="upcoming-tab">Ongoing Events</a>
            </li>
             <li class="nav-item">
                <a href="{{url(route('user_event','past'))}}" class="nav-link {{$status == 'past' ? 'active' : ''}}" id="expred-tab">Past Events</a>
            </li>
        </ul>
        <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade active show" id="allevent" role="tabpanel" aria-labelledby="allevent-tab">
             <!--  @if(count($events) > 0)
                <table class="table table-hover">
                    
                    <tbody>
                        
                 @foreach($events as $event)
                        <tr>
                            <td width="30">
                            @if($event->event_picture)
                              <figure class="coming-event-img">
                                  <img src="{{ url($event->event_picture) }} ">
                              </figure>
                            @endif
                          </td>
                          <td>
                              <a href="{{route('user_show_detail_event', $event->slug)}}">
                              <h4>{{ $event->title }} </h4>
                                <p class="m-0">{{ $event->description }}</p>
                              </a>
                            </td>
                            
                            <td class="text-right" style="white-space: nowrap;">

                              <p><b>From {{date('d/m/Y',strtotime($event->start_date))}}</b> To <b>{{date('d/m/Y',strtotime($event->end_date))}}</b></p>

                              <i class="fas fa-clock"></i>
                               @php  
                                $start_time = \Carbon\Carbon::today();  
                                $finish_time = \Carbon\Carbon::parse($event->end_date); 
                                $result = $start_time->diffInDays($finish_time, false);
                               @endphp

                               <?= EventCurrentStatus($event->start_date,$event->end_date) ?>
                               
                           </td>
                      </tr>
                    @endforeach
                    </tbody>
                </table>
                @else
                 No Events Found
                @endif -->

              <!-- Event card design -->

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

              <!-- End of Event card design -->



            </div>
    

 
        </div>
        {{ $events->links() }}
    </div>
    </div>

   <!--  <div class="col-xl-4 col-md-12 m-b-30">

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



@endsection



@section('scripts')
@endsection


