   <div class="col-md-3 sidebar">
      <ul class="list-group">
        <li class="list-group-item active">
          <a href="{{url(route('user_dashboard'))}}"><i class="glyphicon glyphicon-play"></i>Dashboard</a>
       </li>
        <li class="list-group-item">
         <a href="{{url(route('user_events'))}}"><i class="glyphicon glyphicon-play"></i> My Events</a>
       </li>

        




        <li class="list-group-item"> <span class="badge">0</span> 
          <a href="">
            <i class="glyphicon glyphicon-play"></i> Messages
         </a>
       </li>
        
        <li class="list-group-item"> <a href="{{url('/logout')}}"><i class="glyphicon glyphicon-play"></i> Log Out</a></li>
      </ul>
    </div>