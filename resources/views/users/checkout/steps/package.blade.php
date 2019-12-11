@extends('users.checkout.index1')
@section('checkoutContent')




<fieldset>
<div class="checkout-step">
    <!--  <h4><i class="fa fa-th"></i> Package </h4> -->
     <div class="card-heading">
      <h3> Package</h3>          
    </div>
                     
     <div class="description-package text-left">
            <h4>{{$package->title}}</h4>
            <p><?= $package->description ?> </p>
           

            

                <div class="pkg-ser-list">
                    <div class="row">
			             <div class="col-md-12">
                    <div class="amt-list-wrap">
			               <label for="no_of_hours">Amenities</label>
			               <ul class="pkg-listing-grp row">  
			                  @foreach($package->amenities as $amenity)
			                    <li class="pkg-listing col-lg-4 col-md-6">{{$amenity->amenity->name}}</li>
			                  @endforeach
			               </ul>
                   </div>
			            </div>

			            <div class="col-md-12 ">
                    <div class="amt-list-wrap">
			                <label for="no_of_hours">Events</label>
                                               
                           <ul class="pkg-listing-grp row">  
                            @foreach($package->events as $amenity)
                               <li class="pkg-listing col-lg-4 col-md-6">{{$amenity->event->name}}</li>
                            @endforeach
                           </ul>
			            </div>
                </div>

                    <div class="col-md-12">
                      <div class="amt-list-wrap">
                             <label for="no_of_hours">Games</label>
                   
                               <ul class="pkg-listing-grp row">  
                                @foreach($package->games as $game)
                                   <li class="pkg-listing col-lg-4 col-md-6">{{$game->amenity->name}}</li>
                                @endforeach
                               </ul>
                     </div>
                   </div>

                     <div class="col-md-12">
                      <div class="amt-list-wrap">
		                      <label for="no_of_hours">Summery</label>
		                      <ul class="pkg-listing-grp row">
				            	<li class="pkg-listing col-lg-4 col-md-6"><span>Service Timing</span> {{$package->no_of_hours}} {{$package->no_of_hours > 1 ? 'Hours' : 'Hour'}}</li>
				            	<li class="pkg-listing col-lg-4 col-md-6"><span>Package For (In Days)</span> {{$package->no_of_days}} {{$package->no_of_days > 1 ? 'Days' : 'Day'}}</li>
				            	<li class="pkg-listing col-lg-4 col-md-6"><span>Number of Person</span> ({{$package->min_person}} - {{$package->max_person}}) Persons</li>
				            </ul>
                     </div>
                   </div>
                   </div>
                 </div>


                    <form method="post" class="row">
                     <div class="col-md-12">

                            
                                      @if(count($package->package_addons))
                                        
                                              <label for="add-ons">Add Ons</label>
                                              <ul class="row">
@foreach($package->package_addons as $package_addon)
                                                <li class="col-lg-6">
                                                     <div class="checkbox-input-wrap">
                                                  <div class="category-checkboxes category-title">
                                                  <input {{in_array($package_addon->id,$addons) ? 'checked' : ''}} type="checkbox" name="addons[]" class="checkboxess" data-value="{{$package_addon->key_value}}" value="{{$package_addon->id}}" id="add-ons{{$package_addon->id}}">
                                                      <label for="add-ons{{$package_addon->id}}"><b>{{$package_addon->key}} </b> <span>${{$package_addon->key_value}}</span></label>
                             
                                                </div>
                                           </div>
                                                </li>
                                                @endforeach

                                              </ul> 

                                              <!-- @foreach($package->package_addons as $package_addon)
                                               <li>
                                               	<input {{in_array($package_addon->id,$addons) ? 'checked' : ''}} type="checkbox" name="addons[]" class="checkboxess" data-value="{{$package_addon->key_value}}" value="{{$package_addon->id}}" id="add-ons{{$package_addon->id}}" />
                                               	<label for="add-ons{{$package_addon->id}}"><b>{{$package_addon->key}} </b> <span>${{$package_addon->key_value}}</span></label>
                                               </li>
                                              @endforeach -->
                                        
                                        @endif


                     </div>

                     <!-- <div class="col-md-12">
                     	     <table>
                     	     	<tr>
                     	     		<th>Price</th><td>$<span id="packagePrice">{{$package->price}}</span></td>
                     	     	</tr>
                     	     </table>
                     </div> -->

                     <div class="col-md-12"> @csrf
	                     	    <button class="cstm-btn solid-btn">Continue</button>
                     </div>


                     </form>

                
			 

			      

           
          
     </div>

</div>
</fieldset>



@endsection

@section('scripts')

<script type="text/javascript">
   getpriceWithAddons(packagePrice="<?= $package->price ?>");

   function getpriceWithAddons(packagePrice="<?= $package->price ?>") {
   	            var price = parseInt(packagePrice);
   	            $(".checkboxess:checked").each(function() {
                     price = (price + parseInt($(this).attr('data-value')));
                });
          
          $("body").find('#packagePrice').text(price);

   }

   $("body").on('change','.checkboxess',function(){
            getpriceWithAddons();
   });

</script>


@endsection