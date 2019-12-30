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
@if(count($events) > 0)              
@foreach($events as $k => $event)
  <div class="card-media  mt-4 wow bounceInRight" data-wow-delay="{{100 * ($k + 0.5)}}ms">
    <!-- media container -->
    <div class="card-media-object-container">
      <div class="card-media-object" style="background-image: url({{$event->event_picture !='' ? url($event->event_picture) : '' }});">
      	<div class="date-ribbon"><h2>{{ \Carbon\Carbon::parse($event->start_date)->formatLocalized('%b') }}</h2> <h1>{{ \Carbon\Carbon::parse($event->start_date)->formatLocalized('%d') }}</h1></div>
      </div>
      <span class="card-media-object-tag subtle {{ str_slug(EventCurrentStatus($event->start_date,$event->end_date)) }}">{{ EventCurrentStatus($event->start_date,$event->end_date)}}</span>
    </div>
    <!-- body container -->
    <div class="card-media-body">
      <div class="card-media-body-top">
        <span class="subtle">
          <strong>{{ ucfirst($event->title) }}</strong></br>
          {{ \Carbon\Carbon::parse($event->start_date)->format('l') }}, {{ \Carbon\Carbon::parse($event->start_date)->formatLocalized('%b') }} {{ \Carbon\Carbon::parse($event->start_date)->formatLocalized('%d') }}, {{ \Carbon\Carbon::parse($event->start_time)->format('g:i A') }}</span>
        <div class="card-media-body-top-icons u-float-right">
         <!--  <svg fill="#888888" height="16" viewBox="0 0 24 24" width="16" xmlns="http://www.w3.org/2000/svg">
            <path d="M0 0h24v24H0z" fill="none"/>
            <path d="M18 16.08c-.76 0-1.44.3-1.96.77L8.91 12.7c.05-.23.09-.46.09-.7s-.04-.47-.09-.7l7.05-4.11c.54.5 1.25.81 2.04.81 1.66 0 3-1.34 3-3s-1.34-3-3-3-3 1.34-3 3c0 .24.04.47.09.7L8.04 9.81C7.5 9.31 6.79 9 6 9c-1.66 0-3 1.34-3 3s1.34 3 3 3c.79 0 1.5-.31 2.04-.81l7.12 4.16c-.05.21-.08.43-.08.65 0 1.61 1.31 2.92 2.92 2.92 1.61 0 2.92-1.31 2.92-2.92s-1.31-2.92-2.92-2.92z"/>
          </svg>
          <svg fill="#888888" height="16" viewBox="0 0 24 24" width="16" xmlns="http://www.w3.org/2000/svg">
            <path d="M17 3H7c-1.1 0-1.99.9-1.99 2L5 21l7-3 7 3V5c0-1.1-.9-2-2-2z"/>
            <path d="M0 0h24v24H0z" fill="none"/>
          </svg> -->
        </div>
      </div>
      <span class="card-media-body-heading">{{ $event->description }}</span>
      <div class="card-media-body-supporting-bottom">
        <span class="card-media-body-supporting-bottom-text subtle">{{ $event->location }}</span>
        <span class="card-media-body-supporting-bottom-text subtle u-float-right">Event Budget &ndash; ${{ $event->event_budget }}</span>
      </div>
      <div class="card-media-body-supporting-bottom card-media-body-supporting-bottom-reveal">
        <span class="card-media-body-supporting-bottom-text subtle ">@foreach($event->eventCategories as $loopingTags)#{{ $loopingTags->eventCategory->label }} @if (!$loop->last)
        , @endif @endforeach</span>
        <a href="{{route('user_show_detail_event', $event->slug)}}" class="card-media-body-supporting-bottom-text card-media-link u-float-right">VIEW DETAILS</a>
      </div>
    </div>
  </div>
@endforeach
@else
<div class="alert alert-info closer-step mb-3 mt-4" role="alert">
  <i class="fa fa-info-circle"></i> No Events Found
</div>
@endif


            </div>
    

 
        </div>
        {{ $events->links() }}
    </div>
    </div>

</div>

<!-- /.row -->

</section>



@endsection



@section('scripts')
@endsection


