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
<input type="hidden" id="start_date" value="{{$user_event->start_date}}">

<div class="pcoded-content p-0">
<div class="main-header" style="background-image: url({{ asset('images/event-bg.jpg') }}">
<div class="main-header__intro-wrapper">
<div class="main-header__welcome">
<div class="main-header__welcome-title text-light">Welcome, {{ Auth::user()->first_name }}<strong></strong></div>
<div class="main-header__welcome-subtitle text-light">How are you today?</div>
</div>
<div class="quickview">
<div class="quickview__item">
<div class="quickview__item-total">{{ Auth::user()->UpcomingEvents->count() }}</div>
<div class="quickview__item-description">
<i class="far fa-calendar-alt"></i>
<span class="text-light">Events</span>
</div>
</div>
<!-- <div class="quickview__item">
<div class="quickview__item-total">64</div>
<div class="quickview__item-description">
<i class="far fa-comment"></i>
<span class="text-light">Messages</span>
</div>
</div>
<div class="quickview__item">
<div class="quickview__item-total">27°</div>
<div class="quickview__item-description">
<i class="fas fa-map-marker-alt"></i>
<span class="text-light">Austin</span>
</div>
</div> -->
</div>
</div>
</div>
</div>


<div class="order-status-row mb-4">
   <article class="media order shadow delivered wow bounceInRight" data-wow-delay="350ms">
      <figure class="media-left">
         <i class="fas fa-thumbs-up"></i>
      </figure>
      <div class="media-content">
         <div class="content">
            <h3>
               <strong>{{$user_event->title}}</strong>
               <br>
               <small>{{$user_event->description}}
               </small>
            </h3>
         </div>
      </div>
      <div class="media-right">
        @php $eventStatus = EventCurrentStatus($user_event->start_date,$user_event->end_date) @endphp
         @if($eventStatus == 'Upcoming Event')        
          <div class="card-media-body-top-icons u-float-right">
            <div class="sm-countdown-wrap wt-countdown">
              <ul class="count-down-timer">
                  <input type="hidden" value="{{$user_event->start_date}}" id="start_date_{{$user_event->id}}" class="timerWatch" data-days="#days_{{$user_event->id}}" data-hours="#hours_{{$user_event->id}}" data-minutes="#minutes_{{$user_event->id}}" data-seconds="#seconds_{{$user_event->id}}" />
                  <li><span id="days_{{$user_event->id}}"></span>days</li>
                  <li><span id="hours_{{$user_event->id}}"></span>Hours</li>
                  <li><span id="minutes_{{$user_event->id}}"></span>Minutes</li>
                  <li><span id="seconds_{{$user_event->id}}"></span>Seconds</li>
              </ul>
            </div>
          </div>
         @else  
           <div class="tags has-addons">
              <span class="tag is-light">Status:</span>
              <span class="tag is-delivered">{{ $eventStatus }}</span>
           </div>
         @endif
      </div>
   </article>
</div>


<section class="events-detail-sec">
   <div class="row">
      <div class="col-lg-12 mb-30">
         <div class="card">
            <div class="card-block">
               <div class="event-card-head">
                  <h3>Event Details</h3>
               </div>
               <div class="card-media  mt-4 wow bounceInRight" data-wow-delay="350ms">
                  <!-- media container -->
                  <div class="card-media-object-container">
                     <div class="card-media-object" style="background-image: url({{$user_event->event_picture !='' ? url($user_event->event_picture) : '' }});">
                        <div class="date-ribbon">
                           <h2>{{ \Carbon\Carbon::parse($user_event->start_date)->formatLocalized('%b') }}</h2>
                           <h1>{{ \Carbon\Carbon::parse($user_event->start_date)->formatLocalized('%d') }}</h1>
                        </div>
                     </div>
                     <span class="card-media-object-tag subtle {{ str_slug(EventCurrentStatus($user_event->start_date,$user_event->end_date)) }}">{{ EventCurrentStatus($user_event->start_date,$user_event->end_date)}}</span>
                  </div>
                  <!-- body container -->
                  <div class="card-media-body">
                     <div class="card-media-body-top">
                        <span class="subtle">
                        <strong>{{ ucfirst($user_event->title) }}</strong><br>
                        {{ \Carbon\Carbon::parse($user_event->start_date)->format('l') }}, {{ \Carbon\Carbon::parse($user_event->start_date)->formatLocalized('%b') }} {{ \Carbon\Carbon::parse($user_event->start_date)->formatLocalized('%d') }}, {{ \Carbon\Carbon::parse($user_event->start_time)->format('g:i A') }}
                        </span>
                        <div class="card-media-body-top-icons u-float-right">
                        </div>
                     </div>
                     <span class="card-media-body-heading">{{ $user_event->description }}</span>
                     <div class="card-media-body-supporting-bottom">
                        <span class="card-media-body-supporting-bottom-text subtle">{{ $user_event->location }}</span>
                        <span class="card-media-body-supporting-bottom-text subtle u-float-right">Event Budget &ndash; ${{ $user_event->event_budget }}</span>
                     </div>
                     <div class="card-media-body-supporting-bottom card-media-body-supporting-bottom-reveal">
                        <span class="card-media-body-supporting-bottom-text subtle ">@foreach($user_event->eventCategories as $loopingTags)#{{ $loopingTags->eventCategory->label }} @if (!$loop->last), @endif @endforeach</span>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>

      <div class="col-lg-12 mb-30">
         <div class="card">
            <div class="card-block">
               <div class="event-card-head">
                  <h3>Event Theme</h3>
               </div>
               <div class="row">
                  <div class="col-6">
                     <div class="evt-theme-card bs mt-4 wow bounceInLeft" data-wow-delay="500ms" style="background-image: url({{ asset('images/event-theme-bg.jpg') }})">
                      <div class="evt-theme-body">
                        <div class="title">Seasons</div>
                        <div class="value">{{$user_event->seasons}}</div>
                     </div>
                    </div>
                  </div>
                  <div class="col-6">
                     <div class="evt-theme-card bs mt-4 wow bounceInRight animated" data-wow-delay="800ms" style="background-image: url({{ asset('images/event-theme-bg-2.jpg') }})">
                      <div class="evt-theme-body">
                        <div class="title">Theme Color</div>
                        <div class="value">{{$user_event->colour}}<span class="theme-color-box" style="background: {{$user_event->colour}}"></span></div>
                     </div>
                   </div>
                  </div>
               </div>
            </div>
         </div>
      </div>   

  <!--  todo list html -->
   <div class="col-lg-12 mb-30">
         <div class="card">
            <div class="card-block">
               <div class="event-card-head j-c-s-b">
                  <h3>Todo List</h3>
                  <p class="bdgt-amout">Budget ${{$user_event->event_budget}}</p>
               </div>
               <div class="todo-listing-wrap mt-4">
                  <ul class="Todo-item-list row wow bounceInRight" data-wow-delay="800ms">
                   <li class="col-lg-4">
                     <div class="todo-item">
                        <span>Lorem ipsum</span>
                       <span class="todo-check"><i class="far fa-check-circle"></i></span>
                        <span class="todo-delete"><i class="fas fa-trash-alt"></i></span>
                    </div>
                    </li>
                    <li class="col-lg-4">
                       <div class="todo-item">
                        <span>Lorem ipsum</span>
                        <span class="todo-check"><i class="far fa-check-circle"></i></span>
                        <span class="todo-delete"><i class="fas fa-trash-alt"></i></span>
                    </div>
                    </li>
                    <li class="col-lg-4">
                       <div class="todo-item">
                        <span>Lorem ipsum</span>
                        <span class="todo-check"><i class="far fa-check-circle"></i></span>
                        <span class="todo-delete"><i class="fas fa-trash-alt"></i></span>
                    </div>
                    </li>
                    <li class="col-lg-4">
                       <div class="todo-item">
                        <span>Lorem ipsum</span>
                        <span class="todo-check"><i class="far fa-check-circle"></i></span>
                        <span class="todo-delete"><i class="fas fa-trash-alt"></i></span>
                    </div>
                    </li>
                    <li class="col-lg-4">
                       <div class="todo-item">
                        <span>Lorem ipsum</span>
                        <span class="todo-check"><i class="far fa-check-circle"></i></span>
                        <span class="todo-delete"><i class="fas fa-trash-alt"></i></span>
                    </div>
                    </li>
                    <li class="col-lg-4">
                       <div class="todo-item">
                        <span>Lorem ipsum</span>
                        <span class="todo-check"><i class="far fa-check-circle"></i></span>
                        <span class="todo-delete"><i class="fas fa-trash-alt"></i></span>
                    </div>
                    </li>
                    </ul>
               </div>
           </div>
       </div>
   </div>

 <!--  Event Planning tool -->
  <div class="col-lg-12 mb-30">
         <div class="card">
            <div class="card-block">
               <div class="event-card-head j-c-s-b">
                  <h3>My Event Planning Tool Box</h3>
               </div>
               <div class="event-planning-navigation">
               <nav class="evt-plan-navigation">
               <ul>
                  <li>Welcome Back {{ Auth::user()->name }}! Lets continue Planning</li>
                  <li><a href="javascript:void(0);"><span class="plan-nav-icon"><i class="fas fa-list-alt"></i></span>Guest List</a></li>
                  <li><a href="javascript:void(0);"><span class="plan-nav-icon"><i class="fab fa-chrome"></i></span>Create <br/> Website</a></li>
                  <li><a href="javascript:void(0);"><span class="plan-nav-icon"><i class="fas fa-gift"></i></span>Gift</a></li>
                  <li><a href="javascript:void(0);"><span class="plan-nav-icon"><i class="far fa-edit"></i></span>Create <br/> Event</a></li>
                  <li><a href="javascript:void(0);"><span class="plan-nav-icon"><i class="fas fa-couch"></i></span>Seating <br/> Chart</a></li>
                  <li><a href="javascript:void(0);"><span class="plan-nav-icon"><i class="fas fa-dollar-sign"></i></span>Budget</a></li>
                  <li><a href="javascript:void(0);"><span class="plan-nav-icon"><i class="fas fa-tasks"></i></span>Checklist</a></li>
                  <li><a href="javascript:void(0);"><span class="plan-nav-icon"><i class="fas fa-comments"></i></span>Message <br/> Vendors</a></li>
               </ul>
            </nav>
        </div>
           </div>
       </div>
   </div>
<!-- ======================= -->


<!-- ======================= -->
      <div class="col-lg-12 mb-30">
         <div class="card">
            <div class="card-block">
               <div class="event-card-head j-c-s-b">
                  <h3>Vendors Services Related to your Event</h3>
                  <p class="bdgt-amout">Budget ${{$user_event->event_budget}}</p>
               </div>
                    <table class="table event-table">
                     @foreach($user_event->eventCategories as $category)
                     <tr>
                        <td><label>{{$category->eventCategory->label}} </label></td>
                        <td>
                           <p class="hire-status">{{(count( categoryOrders($category->eventCategory->id, $user_event->id)) > 0) ? 'Hired' :'Not Hired'}}</p>
                        </td>
                        <td>
                           @if(count( categoryOrders($category->eventCategory->id, $user_event->id) ) > 0)
                           <span class="event-status color-green">
                           <i class="fas fa-check-circle"></i>
                           </span>
                           @else
                           <span class="event-status color-red">
                           <i class="fas fa-times-circle"></i>
                           </span>                    
                           @endif
                        </td>
                        @if(count( categoryOrders($category->eventCategory->id, $user_event->id) ) > 0)
                        <td class="action-td"><a href="javascript:void(0);" onclick="payments({{ categoryOrders($category->eventCategory->id, $user_event->id) }})" data-toggle="modal" data-target="#cat_Modal" class="action-btn"><i class="fas fa-eye"></i></a></td>
                        @else
                        <td class="action-td"><a href="javascript:void(0);" class="action-btn"><i class="fas fa-eye-slash"></i></a></td>
                        @endif
                     </tr>
                     @endforeach
                  </table>
           </div>
       </div>
      </div>


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

                     @php 
                        if(!empty(getBasicInfo($business->vendors->id, $business->category_id,'basic_information','cover_photo')))
                        {
                          $businessImage =  url(getBasicInfo($business->vendors->id, $business->category_id,'basic_information','cover_photo'));
                        }else{
                          $businessImage = url("images/vendors/settings/default.png");
                        } 
                     @endphp

                     <div class="col-lg-4">
                        <a href="{{ route('vendor_detail_page', ['catslug' => $category->eventCategory->slug, 'bslug' => $business->business_url]) }}" class="recommended-vedor" target="_blank">
                           <figure> <img src="{{ $businessImage }}"/></figure>
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
                  <div class="row">
                     <div class="col-lg-4 col-md-6">
                        <div class="amt-list-wrap">
                           <label class="rec-heading">Amenities</label>
                           <ul class="pkg-listing-grp">
                              @if(count($category->eventCategory->CategoryAmenity) > 0)
                              @foreach($category->eventCategory->CategoryAmenity as $amenity)
                              <li class="pkg-listing">{{ $amenity->Amenity->name }}</li>
                              @endforeach
                              @else
                              <li class="pkg-listing">No Recommended Vendor Amenities</li>
                              @endif
                           </ul>
                        </div>
                     </div>
                     <div class="col-lg-4 col-md-6">
                        <div class="amt-list-wrap">
                           <label class="rec-heading">Games</label>
                           <ul class="pkg-listing-grp">
                              @if(count($category->eventCategory->CategoryGames) > 0)
                              @foreach($category->eventCategory->CategoryGames as $game)
                              <li class="pkg-listing">{{ $game->Games->name }}</li>
                              @endforeach
                              @else
                              <li class="pkg-listing">No Recommended Vendor Games</li>
                              @endif
                           </ul>
                        </div>
                     </div>
                  </div>
               </div>
               @endforeach          
            </div>
         </div>
      </div>
 </div>

    <div class="col-md-12">
      <div class="card">
         <div class="card-body">
            <div class="cstm-card-head">
               <h5 class="card-title">Idea Tracker / Event Diary</h5>
            </div>
          <form method="Post" action="{{ route('eventExtraDetail', $user_event->slug) }}">
            @csrf
          <div class="row">
            <div class="col-md-12">
              <div class="recommended-vedors-wrap ">
                <div class="rec-card">
                  <h3 class="rec-heading">Idea Tracker</h3>
                  <div class="row">
                     <div class="col-lg-12">
                        {{textarea($errors, 'Ideas*', 'ideas', $user_event->ideas)}}
                     </div>
                  </div>
               </div>  
              </div>  
            </div>

          <div class="col-md-12">                
            <div class="recommended-vedors-wrap ">
               <div class="rec-card">
                  <h3 class="rec-heading">Event Diary</h3>
                  <div class="row">
                     <div class="col-lg-12">
                        {{textarea($errors, 'Event Diary*', 'notepad', $user_event->notepad)}}
                     </div>
                  </div>
               </div>         
            </div>
          </div>

          <div class="card-footer">
            <button type="submit" id="UserEventFormBtn" class="cstm-btn">Update</button>
          </div>

        </form>

        </div>
         </div>
      </div>


   </div>
</section>

<!-- Modal -->
<div id="cat_Modal" class="modal fade" role="dialog">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header">
            <h4 class="modal-title">Modal Header</h4>
            <button type="button" class="close" data-dismiss="modal">&times;</button>
         </div>
         <div class="modal-body" id="modal_body">
         </div>
      </div>
   </div>
</div>
@endsection
@section('scripts')
<script src="{{url('/js/comingsoon.js')}}"></script>
<script type="text/javascript">

CKEDITOR.replace('ideas');


  
   
   function payments(paymentsData) {
     console.log('paymentsData ', paymentsData);
   
     let modal_data = '';
   for (var i = 0; i < paymentsData.length; i++) {
     
     modal_data += `<div class="order-booking-card">
   <div class="card-heading">
   <h3>Event Details</h3>
   </div>
   <div class="responsive-table">
   <table class="table table-striped order-list-table">
   <thead>
   <tr>
   <th>#</th>
   <th>Order Id</th>
   <th>Payment Type</th>
   <th>Price</th>
   </tr>
   </thead>
   <tbody>
   <tr>
   <td>1</td>
   <td>INVORD28</td>
   <td>paypal</td>
   <td>$556</td>
   </tr>
   </tbody>
   </table>
   </div>
   <div class="order-summary-wrap">
   <div class="row">
   <div class="col-lg-6">
   <div class="order-sum-card">
   <div class="billing-addres-detail">
   <h3 class="rec-heading">Billing Address</h3>
   
   <div class="billing-address-line">
   <p><span><i class="fas fa-user"></i></span>Narinder Singh</p>
   <p> <span> <i class="fas fa-map-marker-alt"></i> </span> sddsd, sdsdsd, Baretta, Punjab India wqewewe</p>
   <p> <span> <i class="fas fa-envelope"></i> </span> bajwa9876470491@gmail.com</p>
   <p><span><i class="fas fa-phone-volume"></i></span> 1212878777</p>
   <p></p> 
   </div>
   </div>
   </div>
   </div>
   
   <div class="col-lg-6">
   <div class="order-sum-card">
   <div class="billing-addres-detail">
   
   <div class="payment-sidebar cstm-sidebar">
   <h3 class="rec-heading">Payment Details</h3>
   <table id="payment-table" class="table payment-table">
   <tbody><tr>
   <th>
   Price
   <p>(Gold)</p>
   </th>
   <td>$1000</td>
   </tr>
   <tr>
   <th colspan="2">
   Addons 
   <ul class="mini-inn-table">
   <li><span class="labl"> Add On for two Large Portrait </span><span> $50 </span></li>     
   </ul>
   </th>
   </tr>
   <tr>
   <th>Tax</th>
   <td> $ 3</td>
   </tr>
   <tr>
   <th>Service Fee</th>
   <td>$ 3</td>
   </tr>
   <tr class="total-price-row">
   <th>Total Payable Amount</th>
   <td>$<span id="packagePrice">556</span></td>
   </tr>
   </tbody></table>
   <section class="content-header">
   <div class="row" id="suc_show" style="display: none;">
   <div class="col-md-12">
   <div class="alert alert-success">
   <strong>Success! </strong>
   <span id="res_mess"></span>
   </div>
   </div>
   </div>              
   <div class="row" id="err_show" style="display: none;">
   <div class="col-md-12">
   <div class="alert alert-danger">
   <strong>Error! </strong>
   <span id="err_mess"></span>
   </div>         
   </div>
   </div>
   </section>                
   </div>
   </div>
   </div>
   </div>
   </div>
   </div>
   </div>`;
   paymentsData[i]
   }
     $('#modal_body').html(modal_data);
    } 
   
</script>
<script>
   var type = 1, //circle type - 1 whole, 0.5 half, 0.25 quarter
     radius = '15em', //distance from center
     start = -90, //shift start from 0
     $elements = $('.event-planning-navigation li:not(:first-child)'),
     numberOfElements = (type === 1) ?  $elements.length : $elements.length - 1, //adj for even distro of elements when not full circle
     slice = 360 * type / numberOfElements;
   
   $elements.each(function(i) {
     var $self = $(this),
         rotate = slice * i + start,
         rotateReverse = rotate * -1;
     
     $self.css({
         'transform': 'rotate(' + rotate + 'deg) translate(' + radius + ') rotate(' + rotateReverse + 'deg)'
     });
   });
</script>
@endsection