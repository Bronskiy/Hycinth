<div class="col-lg-4">
				 <aside>
				 	<div class="side-form-wrap">

            <h3>{{getBasicInfo($vendor->vendors->id, $vendor->category_id,'basic_information','business_name')}}</h3>
				 		<h4>Progress Of Business</h4>

            <table class="table">
                 <tr>
                   <th>1. Basic Information About the Business. ({{$basicInfo}}%)</th>
                 </tr>
                 <tr><td><?= ProgressBar($basicInfo) ?></td></tr>

                 <tr>
                   <th>2. Photo And Video Gallery. ({{$photoVideogalery}}%)</th>
                 </tr>
                 <tr><td><?= ProgressBar($photoVideogalery) ?></td></tr>
                 <tr>
                   <th>3. Venue Details (Services & Events, Styles, Seasons). ({{$venuesPercent}}%)</th>
                 </tr>
                 <tr><td><?= ProgressBar($venuesPercent) ?></td></tr>

                 <tr>
                   <th>4. Amenities & Games. ({{$amenitiesAndGames}}%)</th>
                 </tr>
                 <tr><td><?= ProgressBar($amenitiesAndGames) ?></td></tr>

                 

                 <tr>
                   <th>Full Business Progress ({{$overAll}}%)</th>
                 </tr>
                 <tr>
                    <td><?= ProgressBar($overAll) ?></td>
                 </tr>  
                 
                  
            </table> 

             
            @if($overAll > 75 &&  $vendor->status == 1)
                   
                    <form method="post">
                        @csrf
                          <button class="btn btn-block btn-success">Submit for Approval</button>
                    </form>
            @elseif($overAll > 75 &&  $vendor->status == 4)
                   
                    <form method="post">
                        @csrf
                          <button class="btn btn-block btn-success">Resubmit for Approval</button>
                    </form>

            @else

              <div class="alert alert-warning" role="alert">{{ $currentStatus }}</div>
                 
            @endif
			 
				 	</div>
				 </aside>
			</div>