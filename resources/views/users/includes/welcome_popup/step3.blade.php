<form id="thirdEventCreate" action="{{url(route('steps.second'))}}">
                  @csrf
<div class="row">

       <div class="col-md-6">
           {{datebox($errors, 'Start Date*', 'start_date')}}
           {{timebox($errors,'Event Anticipated Start Time', 'start_time')}}
           </div>
         <div class="col-md-6">
           {{datebox($errors, 'End Date*', 'end_date')}}
           {{timebox($errors,'Event Anticipated End Time', 'end_time')}}
           </div>
           <div class="col-md-6">
           {{textbox($errors, 'Min Person*', 'min_person')}}
           </div>
           <div class="col-md-6">
           {{textbox($errors, 'Max Person*', 'max_person')}}
           </div>
      
       
         
            <div class="col-md-12">
               <button class="btn pull-right">Next</button>
           </div>




      </div>

</form>