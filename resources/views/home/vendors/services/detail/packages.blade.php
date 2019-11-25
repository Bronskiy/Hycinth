	     <!-- Packages section here -->
 @if($vendor->VendorPackage->count() > 0 || !empty($types))

 <div class="package-card" id="package-sec">
     <div class="container lr-container">
           <div class="pannel-card1">
            @if(!empty($types))
               <?= notoficationBusinessFlash($types,$vendor->packageComment,$vendor->status) ?> 
            @endif
                   <div class="card-heading">
                  		  <h3>Packages</h3>			
                   </div>

             <div class="packages-content">

                 <div class="packages-wrap">
                        <div class="row"> 

@foreach($vendor->VendorPackage as $key => $package)
                             <div class="col-lg-4">
                                   <div class="package-card">
                                    <div class="inn-card">
                                      <div class="title">    	
                                        <div class="icon">
                                          <i class="fas fa-hand-holding-usd"></i>
                                        </div>
                                        <span class="pkg-amount">{{custom_format($package->price,2)}}</span>
                                        <p class="priceType">{{$package->price_type == "per_person" ? "Per Person" : "Fixed Price"}}</p>
                                      </div>

                                      <div class="content">
                                          <h3 class="price-table-heading">{{$package->title}}</h3>
                                           <div class="pricing-category">
                                               <div class="pkg-summary">
                                                  <label>Decription</label> 
                                                    <div class="card-text">
                                                      <?= $package->description ?>      
                                                     </div>
                                               </div>
                                           </div>

                                        <!-- rk package details start -->
                                           <div class="pricing-category border-tp-bt">
                                              <div class="row">
                                                 <div class="col-md-6 border-rt">
                                                       <label for="no_of_hours">Amenities & Games</label>
                                                       <ul class="pkg-listing-grp">  
                                                          @foreach($package->amenities as $amenity)
                                                            <li class="pkg-listing">{{$amenity->amenity->name}}</li>
                                                          @endforeach
                                                       </ul>       
                                                  </div>
                                                  <div class="col-md-6">
                                                         <label for="no_of_hours">Events</label>
                                               
                                                           <ul class="pkg-listing-grp">  
                                                            @foreach($package->events as $amenity)
                                                               <li class="pkg-listing">{{$amenity->event->name}}</li>
                                                            @endforeach
                                                           </ul>
                                                 </div>
                                              </div>
                                            </div>

                                        <div class="pricing-category">
                                              <label for="no_of_hours">Add Ons</label>
                                                 <div class="vendor-category">
                                                    <div class="category-checkboxes category-title">
                                                        Collage Family
                                                            $5
                                                    </div>
                                                 </div>
                                        </div>
                                        
                                  <table class="pricing-inn-table">
                                    <tbody>
                                      
                                                              <tr>
                                                               <th>Service Timing</th>
                                                              <td>{{$package->no_of_hours}} {{$package->no_of_hours > 1 ? 'Hours' : 'Hour'}}</td>
                                                            </tr>
                                                            <tr>
                                                               <th>Package For (In Days)</th>
                                                               <td>{{$package->no_of_days}} {{$package->no_of_days > 1 ? 'Days' : 'Day'}}</td>
                                                            </tr>
                                                             
                                                            <tr>
                                                               <th>Number of Person</th>
                                                               <td>({{$package->min_person}} - {{$package->max_person}}) Persons</td>
                                                            </tr>
                                    </tbody>
                                  </table>

                                 @if(empty($reviewing))
                                  <div class="btn-area">
                                     <a href="javascript:void(0);" class="cstm-btn">Buy</a>
                                      <div class="custom-control custom-checkbox">
                                          <input type="checkbox" data-package="{{$package}}" class="custom-control-input" id="customCheck_{{$package->id}}">
                                          <label class="custom-control-label" for="customCheck_{{$package->id}}">Compare</label>
                                        </div>
                                  </div>
                                  @endif
                                       
                                 </div>

                              </div>
                            </div> 
                          </div>

@endforeach


  </div>
  </div> 
</div>
</div>
</div>
</div>
</div>

@endif
