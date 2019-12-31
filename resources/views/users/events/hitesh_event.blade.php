@extends('users.layouts.layout')
@section('content')
<div class="main-header">
   <div class="main-header__intro-wrapper">
      <div class="main-header__welcome">
         <div class="main-header__welcome-title text-light">Welcome, <strong>John</strong></div>
         <div class="main-header__welcome-subtitle text-light">How are you today?</div>
      </div>
      <div class="quickview">
         <div class="quickview__item">
            <div class="quickview__item-total">41</div>
            <div class="quickview__item-description">
               <i class="far fa-calendar-alt"></i>
               <span class="text-light">Events</span>
            </div>
         </div>
         <div class="quickview__item">
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
               <strong>24 event Completed</strong>
               <br>
               <small>There are many variations of passages of Lorem Ipsum available
               </small>
            </h3>
         </div>
      </div>
      <div class="media-right">
         <div class="tags has-addons">
            <span class="tag is-light">Status:</span>
            <span class="tag is-delivered">Completed</span>
         </div>
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
                     <div class="card-media-object" style="background-image: url(http://49.249.236.30:6633/images/events/1577697409eRqVgI1EVuZUhfyw35Fs15747561420CECWnSZ7yaVhvavQEMn14997.png);">
                        <div class="date-ribbon">
                           <h2>Dec</h2>
                           <h1>31</h1>
                        </div>
                     </div>
                     <span class="card-media-object-tag subtle on-going-event">On Going Event</span>
                  </div>
                  <!-- body container -->
                  <div class="card-media-body">
                     <div class="card-media-body-top">
                        <span class="subtle">
                        <strong>Birthday Bash Party</strong><br>
                        Tuesday, Dec 31, 9:15 AM
                        </span>
                        <div class="card-media-body-top-icons u-float-right">
                        </div>
                     </div>
                     <span class="card-media-body-heading">Birthday Bash Party</span>
                     <div class="card-media-body-supporting-bottom">
                        <span class="card-media-body-supporting-bottom-text subtle">Newark International Airport Street, Newark, NJ, USA</span>
                        <span class="card-media-body-supporting-bottom-text subtle u-float-right">Event Budget – $2500</span>
                     </div>
                     <div class="card-media-body-supporting-bottom card-media-body-supporting-bottom-reveal">
                        <span class="card-media-body-supporting-bottom-text subtle ">#Photography         ,  #Venues         ,  #Event Planner  </span>
                        <a href="http://49.249.236.30:6633/user/events/detail/birthday-bash-party" class="card-media-body-supporting-bottom-text card-media-link u-float-right">VIEW DETAILS</a>
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
                     <div class="evt-theme-card bs mt-4 wow bounceInLeft" data-wow-delay="500ms" style="background-image: url(https://cdn1.radikalno.ru/uploads/2019/12/24/285ee8833fce0dc1c3aaac9f1b008312-full.png)">
                        <div class="title">Seasons</div>
                        <div class="value">Summer</div>
                        <p>Lorem Ipsum is a simply</p>
                     </div>
                  </div>
                  <div class="col-6">
                     <div class="evt-theme-card bs mt-4 wow bounceInRight animated" data-wow-delay="800ms" style="background-image: url(https://cdn1.radikalno.ru/uploads/2019/12/24/285ee8833fce0dc1c3aaac9f1b008312-full.png)">
                        <div class="title">Theme Color</div>
                        <div class="value">Saphire Blue</div>
                        <p>Lorem Ipsum is a simply</p>
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
                  <p class="bdgt-amout">Budget $0</p>
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
  <!-- ==================== -->
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
                  <li>Welcome Back rk s! Lets continue Planning</li>
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
      <div class="col-lg-12 mb-30">
         <div class="card">
            <div class="card-block">
            	<div class="event-card-head j-c-s-b">
                  <h3>Vendors Services Related to your Event</h3>
                  <p class="bdgt-amout">Budget $0</p>
               </div>
               <table class="table event-table">
                                          <tbody><tr>
                        <td><label>Photography/Videography </label></td>
                        <td>
                           <p class="hire-status">Not Hired</p>
                        </td>
                        <td>
                                                      <span class="event-status color-red">
                           <i class="fas fa-times-circle"></i>
                           </span>                    
                                                   </td>
                                                <td class="action-td"><a href="javascript:void(0);" class="action-btn"><i class="fas fa-eye-slash"></i></a></td>
                                             </tr>
                                             <tr>
                        <td><label>Photography/Videography </label></td>
                        <td>
                           <p class="hire-status">Not Hired</p>
                        </td>
                        <td>
                                                      <span class="event-status color-red">
                           <i class="fas fa-times-circle"></i>
                           </span>                    
                                                   </td>
                                                <td class="action-td"><a href="javascript:void(0);" class="action-btn"><i class="fas fa-eye-slash"></i></a></td>
                                             </tr>
                                             <tr>
                        <td><label>Photography/Videography </label></td>
                        <td>
                           <p class="hire-status">Not Hired</p>
                        </td>
                        <td>
                                                      <span class="event-status color-red">
                           <i class="fas fa-times-circle"></i>
                           </span>                    
                                                   </td>
                                                <td class="action-td"><a href="javascript:void(0);" class="action-btn"><i class="fas fa-eye-slash"></i></a></td>
                                             </tr>
                                             <tr>
                        <td><label>Photography/Videography </label></td>
                        <td>
                           <p class="hire-status">Not Hired</p>
                        </td>
                        <td>
                                                      <span class="event-status color-red">
                           <i class="fas fa-times-circle"></i>
                           </span>                    
                                                   </td>
                                                <td class="action-td"><a href="javascript:void(0);" class="action-btn"><i class="fas fa-eye-slash"></i></a></td>
                                             </tr>
                                       </tbody></table>
           </div>
       </div>
   </div>
    <div class="col-lg-12 mb-30">
         <div class="card">
            <div class="card-block">
            	<div class="event-card-head j-c-s-b">
                  <h3>RECOMMENDED VENDORS FOR MY BIRTHDAY BASH</h3>
               </div>
               <div class="row">
                     <div class="col-lg-6 col-md-6 mt-4">
                        <div class="amt-list-wrap">
                           <label class="rec-heading">Amenities</label>
                           <ul class="pkg-listing-grp">
                             <li class="pkg-listing">Bride dressing are wrwqwertwq</li>
                             <li class="pkg-listing">Bride dressing are wrw</li>
                             <li class="pkg-listing">Bride dressing are dtr</li>
                           </ul>
                        </div>
                     </div>
                     <div class="col-lg-6 col-md-6 mt-4">
                        <div class="amt-list-wrap">
                           <label class="rec-heading">Games</label>
                           <ul class="pkg-listing-grp">
                            <li class="pkg-listing">ame</li>
                             <li class="pkg-listing">kabull</li>
                             <li class="pkg-listing">Lorem ipsum</li>
                          </ul>
                        </div>
                     </div>
                  </div>
           </div>
       </div>
   </div>

   <div class="col-lg-12 mb-30">
         <div class="card">
            <div class="card-block">
            	<div class="event-card-head j-c-s-b">
                  <h3>IDEA TRACKER / EVENT DIARY</h3>
               </div>
              
              <div class="recommended-vedors-wrap mt-4">
                <div class="rec-card">
                  <div class="row">
                     <div class="col-lg-12 mb-4">
                        <div class='form-group'><label>Ideas*</label><textarea class='form-control  myTextEditor' id='ideas' name='ideas' rows='5' col='10'></textarea><p class='error'></p></div>
                     </div>
                     <div class="col-lg-12">
                        <div class="form-group"><label>Event Diary*</label><textarea class="form-control  myTextEditor" id="notepad" name="notepad" rows="5" col="10"></textarea><p class="error"></p></div>
                     </div>
                  </div>
               </div>
               </div>  

           </div>
       </div>
   </div>
   </div>
</section>
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
@section('scripts')
@endsection