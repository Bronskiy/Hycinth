
@foreach(Auth::user()->UpcomingEvents as $event)








	<div class="upcomming-events">
	         <form method="post" action="">
	         	@csrf
		<div class="row">
		  <div class="event-left-col col-lg-8">   
	         <h4>{{$event->title}}</h4>
	         <p><i class="fas fa-calendar-alt"></i> <span>{{date('D-M-Y',strtotime($event->start_date))}} To {{date('D-M-Y',strtotime($event->end_date))}}</span></p>
	         	<input type="hidden" name="id" value="{{$event->id}}">             
         </div>
         <div class="col-lg-4">
         	 <div class="text-right mini-btn-wrap">
         	    <button class="cstm-btn">Choose & Continue</button>
         	</div>
         </div>
     </div>
	         </form>
	</div>















@endforeach






