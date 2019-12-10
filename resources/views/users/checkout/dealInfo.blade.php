<div class="deals-card mini-deal-card">
    <figure class="deal-img">
      <img src="{{url($deal->image)}}">
      <figcaption class="discount-per"><span class="blink-text">
        @if($deal->deal_off_type == 0)
         {{$deal->amount}}% 
        @else
         ${{$deal->amount}} 
        @endif
        <small> OFF</small></span> </figcaption>      
    </figure>
     <div class="detal-card-details">
      <div class="dealls-dis-head">
        <a href="{{url( route('vendor_detail_page',[$deal->Business->category->slug,$deal->Business->business_url]))}}#deals-sec"> <h4>{{$deal->title}}</h4></a>

<p class="ser-text"> <span><i class="fas fa-calendar-alt"></i></span>
        @if($deal->deal_life == 0)
          Permanent Deal
        @else
                <span class="deal-starting-date">Stating:<strong> {{date('d-m-Y',strtotime($deal->start_date))}}</strong></span> <span class="deal-starting-date">Ending:<strong> {{date('d-m-Y',strtotime($deal->expiry_date))}}</strong></span>
           <!-- {{$deal->deal_life == 1 ? 'Expires on '.$deal->expiry_date : 'Permanent promotion'}} -->
        @endif
        </p>

        @if($deal->type_of_deal == '0')
        <a href="javascript:void(0);" class="coupon-code">
          <span class="code-text">{{ $deal->deal_code }}</span>
          <span class="get-code">Get Code</span>
        </a>
       @endif
      </div>
      <p class="deal-discription">
             <?php $description =  $deal->description; ?>
              {{substr($description,0,100)}} {{strlen($description) > 100 ? '...' : ''}}
        </p>
     </div>

  </div>


<div class="package-card">
  <div class="inn-card">
    <div class="deal-pkg-content">
      <h3 class="price-table-heading">Title {{$package->title}}</h3>

   <div class="pricing-category">
      <div class="pkg-summary">
       <label>Decription</label> 
      	<p class="card-text">{!! $package->description !!}</p>
      </div>
      @if(!empty($package->menus))
      <div class="pkg-summary">      
      <label>Menus</label> 
       <p class="card-text">{!! $package->menus !!}</p>
      </div>
      @endif
  </div>

      <!-- rk package details start -->
      @if(count($package->amenities) || count($package->games) || count($package->events))

     <div class="pricing-category">
      <div class="row">
@if(count($package->amenities))
<div class="col-md-6">
	      <label for="no_of_hours">Amenities</label>
	      @foreach($package->amenities as $amenity)
	      <ul class="pkg-listing-grp"> 
		    <li class="pkg-listing">{{$amenity->amenity->name}}</li>
		  </ul>   
		  @endforeach
 </div>
 @endif

@if(count($package->games))
<div class="col-md-6">
  <label for="no_of_hours">Games</label>
            @foreach($package->games as $game)
		        <ul class="pkg-listing-grp">  
		          <li class="pkg-listing">{{$game->amenity->name}}</li>
		        </ul>
            @endforeach 
             </div>
      @endif

 @if(count($package->events))
<div class="col-md-6">
  <label for="no_of_hours">Events</label>
 @foreach($package->events as $amenity)
        <ul class="pkg-listing-grp">  
          <li class="pkg-listing">{{$amenity->event->name}}</li>
        </ul>
     @endforeach
</div>
 @endif
</div>
</div>
@endif
<!--  -->

@if(count($package->package_addons))
<div class="pricing-category">
  <label for="no_of_hours">Add Ons</label>
     @foreach($package->package_addons as $pcd)
     <div class="vendor-category">
      <div class="category-checkboxes category-title">
        {{$pcd->key}}
        ${{$pcd->key_value}}
      </div>
     </div>
   @endforeach
 </div>
@endif

<table class="pricing-inn-table">
	  <tr>
	      <th>Price</th>
	      <td>${{$package->price}}</td>
	  </tr>
	  <tr>
	   <th>Number Of Hours</th>
	    <td>{{$package->no_of_hours}}</td>
	  </tr>
	  <tr>
	   <th>Number Of Days</th>
	    <td>{{$package->no_of_days}}</td>
	  </tr>
	  
	    <tr>
	      <th>Price Type</th>
	     <td>{{ $package->price_type === 'fix' ? 'Fix Price' : 'Price Per Person' }}</td>
	   </tr>

	 <tr>
	  <th>Minimum Person</th>
	     <td>{{$package->min_person}}</td>
	   </tr>
	<tr>
		<th>Maximum Person</th>
		<td>{{$package->max_person}}</td>
	</tr>
</table>


</div>
</div>
</div>

