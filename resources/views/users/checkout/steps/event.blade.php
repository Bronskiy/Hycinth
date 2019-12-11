@extends('users.checkout.index1')
@section('checkoutContent')

 







   <fieldset>
      <div class="card-heading">
            <h3>Event Event</h3>                    
        </div>
          <div class="multistep-body">
            <div class="event-detail-card">
                 
                 <!-- <p class="ser-text"> <span><i class="fas fa-calendar-alt"></i> </span> 10-12-2019 </p> -->
                 <!-- <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.</p> -->




@if($UserEvent->count() > 0)
    <?php $event = $UserEvent->first(); ?>
        <h3>{{$event->title}}</h3>
        <p><i class="fas fa-calendar-alt"></i> <span>{{date('D-M-Y',strtotime($event->start_date))}} To {{date('D-M-Y',strtotime($event->end_date))}}</span></p>
        <p>{{$event->description}}</p>

          <ul class="button-grp-wrap text-center">
                    <li><a href="javascript:void(0)" class="icon-btn" data-toggle="modal" data-target="#myModal"><i class="fas fa-plus"></i></a>
 
                    </li>                   
         </ul>
@else

    <ul class="button-grp-wrap text-center">
                    <li><a href="javascript:void(0)" class="icon-btn" data-toggle="modal" data-target="#myModal"><i class="fas fa-plus"></i></a>
 
                    </li>                   
   </ul>

@endif

                 
            </div>
           </div>
        <div class="multistep-footer"> 
         <!--  <button type="button" class="action-button previous_button">Back</button> -->
          <button type="button" class="next action-button">Continue</button> 
      </div>
    </fieldset>












<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      <div class="modal-body">
          @include('users.checkout.parts.user_events')      


      </div>
       
    </div>
  </div>
</div>


@endsection