
@extends('users.layouts.layout')
@section('content')

<div class="page-header">
    <div class="page-block">
        <div class="row align-items-center">
            <div class="col-md-6">
                <div class="page-header-title">
                    <h5 class="m-b-10">Detail Event</h5>
                </div>
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url(route('admin_dashboard'))}}"><i class="feather icon-home"></i></a></li>
                    <li class="breadcrumb-item "><a href="{{ route('user_events') }}">Events</a></li>
                    <li class="breadcrumb-item "><a href="javascript:void(0)">Detail Event</a></li>
                </ul>
            </div>
            <div class="col-md-6">
                <div class="btn-wrap text-right mb-3">
                <a href="{{ route('user_show_edit_event', $user_event->slug) }}" class="cstm-btn">edit Event</a>
              </div>
            </div>

        </div>
    </div>
</div>
<input type="hidden" id="end_date" value="{{$user_event->end_date}}">
<section class="content">
      <div class="row">
        <!-- [ rating list ] end-->
                                <div class="col-md-12 m-b-30">
                                    <div class="tab-content" id="myTabContent">
                                            <table class="table table-hover">               
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                          <a>
                                                          <h4>{{ $user_event->title }} </h4>
                                                            <p class="m-0">{{ $user_event->description }}</p>
                                                          </a>
                                                        </td>
                                                        
                                                        <td class="text-right" style="white-space: nowrap;">
                                                          ({{ $user_event->min_person }} - {{ $user_event->max_person }}) Persons
                                                        </br>
                                                              <i class="fas fa-clock"></i> 
                                                    @php  
                                                      $start_time = \Carbon\Carbon::now();  
                                                      $finish_time = \Carbon\Carbon::parse($user_event->end_date); 
                                                      $result = $start_time->diffInDays($finish_time, false);
                                                    @endphp

                                                    @if($result <= 0)
                                                      Past Event
                                                    @else
                                                      {{ $result }} Days left
                                                    @endif
                                                          

                                                        </td>
                                                    </tr>
                                                   
                                                </tbody>
                                            </table>
                                    </div>
                                </div>
                               <!--  @if(\Carbon\Carbon::parse($user_event->end_date) >= \Carbon\Carbon::today())
                                <div class="col-xl-4 col-md-12 m-b-30">
                                    <div class="card Upcoming-event-card">
                                        <div class="card-block">
                                          <div class="upcmg-evnt-head text-center">
                                          <h2>Upcoming Events</h2>
                                          <h3>{{$user_event->title}}</h3>
                                          <p>{{$user_event->description}}</p>

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
                                </div>
                                @endif -->

      </div>
    </section>

<section class="content">
<div class="row">

    

         <div class="col-md-6">
          <div class="card"> 
      <div class="card-body">
          <div class="cstm-card-head">
          <h5 class="card-title">{{$user_event->title}}</h5>
          @if($result > 0)
          <ul class="count-down-timer">
              <li><span id="days_{{$user_event->id}}"></span>days</li>
              <li><span id="hours_{{$user_event->id}}"></span>Hours</li>
              <li><span id="minutes_{{$user_event->id}}"></span>Minutes</li>
              <li><span id="seconds_{{$user_event->id}}"></span>Seconds</li>
            </ul>
          @endif
        </div>

        <div class="card-inn-content">
          <div class="table-responsive">
            <table class="table event-table">
              @foreach($user_event->eventCategories as $category)
               <tr>
                 <td><label>{{$category->eventCategory->label}}</label></td>
                 <td><span class="event-status color-green"><i class="fas fa-check-circle"></i></span></td>
                 <td class="action-td"><a href="javascript:void(0);" data-toggle="modal" data-target="#myModal" class="action-btn"><i class="fas fa-eye"></i></a></td>
               </tr>
               @endforeach
                <tr>
                 <td><label>Photographer</label></td>
                 <td><span class="event-status  color-gray"><i class="fas fa-check-circle"></i></span></td>
                 <td class="action-td"><a href="javascript:void(0);" class="action-btn"><i class="fas fa-eye"></i></a></td>
               </tr>
            </table>
          </div>
        </div>

    </div>
</div>
</div>

 @if($result > 0)
                                <div class="col-md-6 m-b-30">
                                    <div class="card Upcoming-event-card">
                                        <div class="card-block">
                                          <div class="upcmg-evnt-head text-center">
                                          <h2>Upcoming Events</h2>
                                          <h3>{{$user_event->title}}</h3>
                                          <p>{{$user_event->description}}</p>
                                        </div>
                                        <div class="countdown-timer-container">
                                        <ul class="count-down-timer">
                                          <li><span id="days-up_{{$user_event->id}}"></span>days</li>
                                          <li><span id="hours-up_{{$user_event->id}}"></span>Hours</li>
                                          <li><span id="minutes-up_{{$user_event->id}}"></span>Minutes</li>
                                          <li><span id="seconds-up_{{$user_event->id}}"></span>Seconds</li>
                                        </ul>
                                      </div>
                                        </div>
                                      </div>
                                </div>
                                @endif

<div class="col-md-12">
<div class="card"> 
      <div class="card-body">
        <div class="cstm-card-head">
            <h5 class="card-title">Recommended Vendors for {{$user_event->title}}</h5>
          </div>
          <div class="recommended-vedors-wrap">
             @foreach($user_event->eventCategories as $category)
                <div class="rec-card">
                   <h3 class="rec-heading">{{$category->eventCategory->label}}</h3>
                    <div class="row">
          			@if(count($category->eventCategory->businesses) > 0)
                      @foreach($category->eventCategory->businesses as $business)
                      <div class="col-lg-4">
                        <a href="javascript:void(0);" class="recommended-vedor">

                         <figure> <img src="{{url(getBasicInfo($business->vendors->id, $business->category_id,'basic_information','cover_photo'))}}"/></figure>
                          <div class="rec-detail">
                          <h3>{{ $business->title }}</h3>
                              <p>{{ getBasicInfo($business->vendors->id, $business->category_id,'basic_information','short_description') }}</p>
                        </div>
                        </a>
                      </div>
                    @endforeach
                    @else
                    <div class="col-lg-12">
                    	<h5>No Recommended Vendor</h5>
                    </div>
                    @endif
                    </div>

                   <h3 class="rec-heading">Amenities</h3>
                    <div class="row">
                @if(count($category->eventCategory->CategoryAmenity) > 0)
                      @foreach($category->eventCategory->CategoryAmenity as $amenity)
                      <div class="col-lg-4">
                        <a href="javascript:void(0);" class="recommended-vedor">
                          <div class="rec-detail">
                          <h3>{{ $amenity->Amenity->name }}</h3>
                        </div>
                        </a>
                      </div>
                    @endforeach
                    @else
                    <div class="col-lg-12">
                      <h5>No Recommended Vendor Amenities</h5>
                    </div>
                    @endif
                    </div>

                    <h3 class="rec-heading">Games</h3>
                    <div class="row">
                @if(count($category->eventCategory->CategoryGames) > 0)
                      @foreach($category->eventCategory->CategoryGames as $game)
                      <div class="col-lg-4">
                        <a href="javascript:void(0);" class="recommended-vedor">
                          <div class="rec-detail">
                          <h3>{{ $game->Games->name }}</h3>
                        </div>
                        </a>
                      </div>
                    @endforeach
                    @else
                    <div class="col-lg-12">
                      <h5>No Recommended Vendor Games</h5>
                    </div>
                    @endif
                    </div>

                </div>
                @endforeach

                 <!-- 
                 <div class="rec-card">
                   <h3 class="rec-heading">Decoration</h3>
                    <div class="row">
                      <div class="col-lg-4">
                        <a href="javascript:void(0);" class="recommended-vedor">
                          <figure><img src="http://49.249.236.30:6633/images/vendors/deals/1575620736MC9WuXw7kH4028f5DVu5t10_dsc5356_15_1836831555326929.jpg"></figure>
                          <div class="rec-detail">
                          <h3>PRATEEK DUA PHOTOGRAPHY</h3>
                          <p>Based Out Of Noida, Prateek Dua Photography Is A Photography Service</p>
                        </div>
                        </a>
                      </div>
                      <div class="col-lg-4">
                        <a href="javascript:void(0);" class="recommended-vedor">
                          <figure><img src="http://49.249.236.30:6633/images/vendors/deals/1575620736MC9WuXw7kH4028f5DVu5t10_dsc5356_15_1836831555326929.jpg"></figure>
                          <div class="rec-detail">
                          <h3>PRATEEK DUA PHOTOGRAPHY</h3>
                          <p>Based Out Of Noida, Prateek Dua Photography Is A Photography Service</p>
                        </div>
                        </a>
                      </div>
                      <div class="col-lg-4">
                        <a href="javascript:void(0);" class="recommended-vedor">
                          <figure><img src="http://49.249.236.30:6633/images/vendors/deals/1575620736MC9WuXw7kH4028f5DVu5t10_dsc5356_15_1836831555326929.jpg"></figure>
                          <div class="rec-detail">
                          <h3>PRATEEK DUA PHOTOGRAPHY</h3>
                          <p>Based Out Of Noida, Prateek Dua Photography Is A Photography Service</p>
                        </div>
                        </a>
                      </div>
                      <div class="col-lg-4">
                        <a href="javascript:void(0);" class="recommended-vedor">
                          <figure><img src="http://49.249.236.30:6633/images/vendors/deals/1575620736MC9WuXw7kH4028f5DVu5t10_dsc5356_15_1836831555326929.jpg"></figure>
                          <div class="rec-detail">
                          <h3>PRATEEK DUA PHOTOGRAPHY</h3>
                          <p>Based Out Of Noida, Prateek Dua Photography Is A Photography Service</p>
                        </div>
                        </a>
                      </div>
                      <div class="col-lg-4">
                        <a href="javascript:void(0);" class="recommended-vedor">
                          <figure><img src="http://49.249.236.30:6633/images/vendors/deals/1575620736MC9WuXw7kH4028f5DVu5t10_dsc5356_15_1836831555326929.jpg"></figure>
                          <div class="rec-detail">
                          <h3>PRATEEK DUA PHOTOGRAPHY</h3>
                          <p>Based Out Of Noida, Prateek Dua Photography Is A Photography Service</p>
                        </div>
                        </a>
                      </div>
                      <div class="col-lg-4">
                        <a href="javascript:void(0);" class="recommended-vedor">
                          <figure><img src="http://49.249.236.30:6633/images/vendors/deals/1575620736MC9WuXw7kH4028f5DVu5t10_dsc5356_15_1836831555326929.jpg"></figure>
                          <div class="rec-detail">
                          <h3>PRATEEK DUA PHOTOGRAPHY</h3>
                          <p>Based Out Of Noida, Prateek Dua Photography Is A Photography Service</p>
                        </div>
                        </a>
                      </div>
                    </div>
                </div> -->

          </div>
         </div>
      </div>
   </div>

</div>
</section>
     

<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">Modal Header</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
        <p>Some text in the modal.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>

@endsection

@section('scripts')
<script src="{{url('/js/comingsoon.js')}}"></script>
<script type="text/javascript">
comingsoon('end_date', 'days_{{$user_event->id}}', 'hours_{{$user_event->id}}', 'minutes_{{$user_event->id}}', 'seconds_{{$user_event->id}}');
comingsoon('end_date', 'days-up_{{$user_event->id}}', 'hours-up_{{$user_event->id}}', 'minutes-up_{{$user_event->id}}', 'seconds-up_{{$user_event->id}}');
</script>
@endsection


