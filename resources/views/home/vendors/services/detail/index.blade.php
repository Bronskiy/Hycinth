@extends('layouts.home')
@section('content')
<section class="log-sign-banner" style="background:url('/frontend/images/banner-bg.png');">
    <div class="container">
        <div class="page-title text-center">
            <h1>{{getBasicInfo($vendor->vendors->id, $vendor->category_id,'basic_information','business_name')}}</h1>
        </div>
    </div>    
</section>

    <section class="vendor-detail-header">
    	<div class="container lr-container">
		 <div class="sec-card">
		<div class="page-head">
				<div class="row">
					<div class="col-lg-8">
						<div class="page-header">
							<figure class="head-logo"><img src="/frontend/images/vendor-03.png"></figure>
							<div class="heading-details">
		  <h2>{{getBasicInfo($vendor->vendors->id, $vendor->category_id,'basic_information','business_name')}}</h2>
								<p class="address-line"><span class="location-icon"><i class="fas fa-map-marker-alt"></i></span><?= getBasicInfo($vendor->vendors->id, $vendor->category_id,'basic_information','address')?></p>
							</div>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="cstm-btn-grp text-right">
							<a href="javascript:void(0);" class="cstm-btn"><span class="btn-icon"><i class="fas fa-handshake"></i></span> Hired?</a>
							<a href="javascript:void(0);" class="cstm-btn"><span class="btn-icon"><i class="fas fa-heart"></i></span> Save</a>
						</div>
					</div>
				
			    </div>
			
		</div>

                     <div class="deatil-navigation-wrap">			
							<ul class="detail-navigation">
								<li><a href="#" data-scroll="image-gallery">Photos</a></li>
					
								<li><a href="#faq-sec" data-scroll="faq-sec">FAQs</a></li>
								<li><a href="#venue-sec" data-scroll="venue-sec">Venue</a></li>                              
								<li><a href="#description-sec" data-scroll="description-sec">Description</a></li>
								<li><a href="#AmenitiesGames-sec" data-scroll="AmenitiesGames-sec">Amenities and Games</a></li>
								<li><a href="#deals-sec" data-scroll="deals-sec">Deals</a></li>	
								<li><a href="#review-sec" data-scroll="review-sec">Reviews</a></li>
							</ul>                    
		              </div>
								
	</div>
		</div>
	</section>

		
			

	<div class="main-detail">
		<div class="container lr-container">
		  <div class="row">
			<div class="col-lg-8">
				<div class="product-gallery-wrap" id="image-gallery">
					<div class="product-gallery-sec">
						<div class="pannel-card mt-0">		
							<div class="product-gallery-content">
					<ul class="nav nav-tabs" id="galleryTab" role="tablist">
						  <li class="nav-item">
						    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true"><span class="tab-icon"><i class="fas fa-camera-retro"></i></span> Photos</a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false"><span class="tab-icon"><i class="fas fa-video"></i></span>  Videos</a>
						  </li>
						</ul>
						<div class="tab-content" id="galleryTabContent">
						  <div class="tab-pane fade  show active" id="home" role="tabpanel" aria-labelledby="home-tab">
						  	<!-- Photo gallery sec -->
						  	 <div id="Photo-slider" class="flexslider">
						          <ul class="slides">
						          	@if($vendor->ImageGallery->count() > 0)
						          	@foreach($vendor->ImageGallery as $img)
						            <li>
						              <img src="{{url($img->keyValue)}}" />
						            </li>
						            @endforeach
						            @endif
						           <!--  <li>
						              <img src="/frontend/images/menu-vendor.png" />
						            </li>
						            <li>
						              <img src="/frontend/images/menu-vendor.png" />
						            </li>
						            <li>
						              <img src="/frontend/images/menu-vendor.png" />
						            </li>
						            <li>
						              <img src="/frontend/images/menu-vendor.png" />
						            </li>
						            <li>
						              <img src="/frontend/images/menu-vendor.png" />
						            </li>
						            <li>
						              <img src="/frontend/images/menu-vendor.png" />
						            </li>
						            <li>
						              <img src="/frontend/images/menu-vendor.png" />
						            </li> -->
						          </ul>
						        </div>
						        <div id="Photo-carousel" class="flexslider">
						          <ul class="slides">
						          		@if($vendor->ImageGallery->count() > 0)
						          	@foreach($vendor->ImageGallery as $img)
						            <li>
						              <img src="{{url($img->keyValue)}}" />
						            </li>
						            @endforeach
						            @endif
						             
						          </ul>
						        </div>
						  	<!-- END here -->

						  </div>
						  <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
						  	<!-- 	Video slider -->
						  	<div id="Video-slider" class="flexslider">
						          <ul class="slides">
						            <li>
						              <img src="/frontend/images/menu-vendor.png" />
						            </li>
						            <li>
						              <img src="/frontend/images/menu-vendor.png" />
						            </li>
						            <li>
						              <img src="/frontend/images/menu-vendor.png" />
						            </li>
						            <li>
						              <img src="/frontend/images/menu-vendor.png" />
						            </li>
						            <li>
						              <img src="/frontend/images/menu-vendor.png" />
						            </li>
						            <li>
						              <img src="/frontend/images/menu-vendor.png" />
						            </li>
						            <li>
						              <img src="/frontend/images/menu-vendor.png" />
						            </li>
						            <li>
						              <img src="/frontend/images/menu-vendor.png" />
						            </li>
						          </ul>
						        </div>
						        <div id="Video-carousel" class="flexslider">
						          <ul class="slides">
						            <li>
						              <img src="/frontend/images/menu-vendor.png" />
						            </li>
						            <li>
						              <img src="/frontend/images/menu-vendor.png" />
						            </li>
						            <li>
						              <img src="/frontend/images/menu-vendor.png" />
						            </li>
						            <li>
						              <img src="/frontend/images/menu-vendor.png" />
						            </li>
						            <li>
						              <img src="/frontend/images/menu-vendor.png" />
						            </li>
						            <li>
						              <img src="/frontend/images/menu-vendor.png" />
						            </li>
						            <li>
						              <img src="/frontend/images/menu-vendor.png" />
						            </li>
						            <li>
						              <img src="/frontend/images/menu-vendor.png" />
						            </li>
						          </ul>
						        </div>
						  	<!-- END here -->
						  </div>
						</div>
				</div>
			</div>
		</div>
	</div>
				

<div class="faq-sec" id="faq-sec">
	<div class="pannel-card">
		<div class="card-heading">
			<h3>FAQ</h3>			
		</div>		
		<div class="faq-content">


				@if($vendor->faqs->count() > 0)
				   @foreach($vendor->faqs as $faq)

						  <div class="faq-block">
								<h4 class="faq-question"> <span class="que-count">Q:</span>{{$faq->question}}</h4>
								<div class="faq-ans detail-listing">
									 
									 <div class="faq_ans"><span class="ans-count">A:</span><?= $faq->answer ?></div>
								</div>
							</div>
						            
				  @endforeach
				@endif


			<!-- <div class="faq-block">
				<h4 class="faq-question">Quisque pulvinar ligula tortor, nec vulputate sapien imperdiet et?</h4>
				<div class="faq-ans">
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed et tellus nec magna maximus vestibulum at a libero. Vestibulum sed justo mi. Donec gravida odio vitae erat auctor ornare. Nunc sollicitudin mi quis quam commodo, sit amet dapibus nulla tristique.</p>
				</div>
			</div> -->
			<!-- <div class="faq-block">
				<h4 class="faq-question">Quisque pulvinar ligula tortor, nec vulputate sapien imperdiet et?</h4>
				<div class="faq-ans">
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed et tellus nec magna maximus vestibulum at a libero. Vestibulum sed justo mi. Donec gravida odio vitae erat auctor ornare. Nunc sollicitudin mi quis quam commodo, sit amet dapibus nulla tristique.</p>
				</div>
			</div>
			<div class="faq-block">
				<h4 class="faq-question">Quisque pulvinar ligula tortor, nec vulputate sapien imperdiet et?</h4>
				<div class="faq-ans">
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed et tellus nec magna maximus vestibulum at a libero. Vestibulum sed justo mi. Donec gravida odio vitae erat auctor ornare. Nunc sollicitudin mi quis quam commodo, sit amet dapibus nulla tristique.</p>
				</div>
			</div>
			<div class="faq-block">
				<h4 class="faq-question">Quisque pulvinar ligula tortor, nec vulputate sapien imperdiet et?</h4>
				<div class="faq-ans">
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed et tellus nec magna maximus vestibulum at a libero. Vestibulum sed justo mi. Donec gravida odio vitae erat auctor ornare. Nunc sollicitudin mi quis quam commodo, sit amet dapibus nulla tristique.</p>
				</div>
			</div> -->
		</div>
	</div>
</div>
<!-- End here -->
<div class="venue-card" id="venue-sec">
	<div class="pannel-card">
		<div class="card-heading">
			<h3>Venue details</h3>			
		</div>		
		<div class="venue-content">
			<div class="row">
				<div class="col-lg-12">
					<div class="feature-wrap">
						
						<div class="feature-detail">
							<h4><span class="feature-icon">
							<i class="fas fa-clipboard-list"></i>
				</span> Services:</h4>
							 <ul class="detail-listing">
							 	@foreach($services as $k => $service)

                                    <li>{{$service->category->label}}</li>

                                    
							 	@endforeach
							 </ul>
						</div>
					</div>
				</div>

 
				<div class="col-lg-12">
					<div class="feature-wrap">
						
					 
						<div class="feature-detail">
							<h4><span class="feature-icon">
							<i class="fas fa-sun"></i>
				                      </span> Styles:</h4>
							 <ul class="detail-listing">
							 	@foreach($services as $k => $service)

                                    <li>{{$service->category->label}}</li>

                                    
							 	@endforeach
							 </ul>
						</div>
					</div>
				</div>
				<div class="col-lg-12">
					<div class="feature-wrap">						
						 
							<div class="feature-detail">
							<h4><span class="feature-icon">
							<i class="fas fa-calendar-check"></i>
				                      </span> Events:</h4>
							 <ul class="detail-listing">
							 	@foreach($services as $k => $service)

                                    <li>{{$service->category->label}}</li>

                                    
							 	@endforeach
							 </ul>
						</div>
					</div>
				</div>
				
				<div class="col-lg-12">
					<div class="feature-wrap">
						
						<div class="feature-detail">
							<h4><span class="feature-icon">
							<i class="fas fa-poo-storm"></i>
				                      </span> Seasons:</h4>
							 <ul class="detail-listing">
							 	@foreach($services as $k => $service)

                                    <li>{{$service->category->label}}</li>

                                    
							 	@endforeach
							 </ul>
						</div>
					</div>
				</div>
				<div class="col-lg-12">
					<div class="map-wrap" id="map">
						<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3430.6679305117195!2d76.68865401499058!3d30.699617894279218!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390feef69353d285%3A0x6d3c38ef8c74065!2sDeftsoft!5e0!3m2!1sen!2sin!4v1574179093907!5m2!1sen!2sin" allowfullscreen=""></iframe>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

   <div class="summary-card" id="description-sec">
	<div class="pannel-card">
		<div class="card-heading">
			<h3>Description</h3>			
		</div>		
		<div class="summary-details-content">
                 <div class="summary-details detail-listing">
					 
                     
                         <?= ($vendor->description->count() > 0) ? $vendor->description->keyValue : 'No Description' ?>
                     
				</div>
			</div>
		</div>
	</div>


<!-- 	End -->

  <div class="Amenities-card" id="AmenitiesGames-sec">
	<div class="pannel-card">
		<div class="card-heading">
			<h3>Amenities and Games</h3>			
		</div>		
		<div class="Amenities-content">
           <div class="row">
           	<div class="col-lg-6">
           		<h4 class="faq-question">Amenities</h4>
           		  <ul class="detail-listing"> 

           		  @if($amenities->count() > 0)          		  	 

                     @foreach($amenities->get() as $amen)
                          <li>{{$amen->amenity->name}}</li>
                     @endforeach
           		  @endif
           		  	 
           		  </ul>
           	</div>

           	<div class="col-lg-6">
           		<h4 class="faq-question">Games</h4>
           		  <ul class="detail-listing"> 

           		   @if($events->count() > 0)          		  	 

                     @foreach($events->get() as $event)
                          <li>{{$event->Event->name}}</li>
                     @endforeach

           		  @endif          		  	 
           		  	    

           		  </ul>
           	</div>

           </div>
      </div>
   </div>
</div>
<!-- ====================== -->
 <div class="Deals-card" id="deals-sec">
	<div class="pannel-card">
		<div class="card-heading">
			<h3>Deals and Discount</h3>			
		</div>		
		<div class="Deals-content">


			    @if($vendor->DealsDiscount->count() > 0)

			    @foreach($vendor->DealsDiscount as $deal)
                  <div class="detail-in-breif">
                                <div class="row">
                                    <div class="col-lg-4 col-md-12">
                                        <div class="left-content">
                                            <img src="{{url($deal->image)}}">
                                        </div>
                                    </div>
                                    <div class="col-lg-8 col-md-12">
                                        <div class="right-content">
                                            <p>{{$deal->title}}</p>
                                           
                                
                                            <hr>
                                            <p class="detail">
                                               <?= $deal->description ?> 
                                            </p>
                                            <a href="javascript:void(0);" class="cstm-btn solid-btn detail-btn">Get Deal</a>
                                        </div>
                                    </div>
                                </div>
                    </div>
                   @endforeach

                    @endif
                     
                    
			</div>
		</div>

    <!--  ============================= -->

	</div>
<!-- ============================ -->
					
				</div>
			<div class="col-lg-4">
				 <aside>
				 	<div class="side-form-wrap">
				 		<span class="side-form-icon"><i class="fas fa-envelope-open-text"></i></span>
				 		<form class="side-form">
				 			<h3 class="form-heading">Vendor Message</h3>
				 			<div class="form-group">
                           <input type="text" id="" class="form-control" placeholder="Enter your Name">
                           <span class="input-icon"><i class="fas fa-user"></i></span>
                        </div>
                        <div class="form-group">
                           <input type="text" id="" class="form-control" placeholder="Email">
                           <span class="input-icon"><i class="fas fa-user"></i></span>
                        </div>
                        <div class="form-group">
                           <input type="text" id="" class="form-control" placeholder="Phone">
                           <span class="input-icon"><i class="fas fa-phone"></i></span>
                        </div>
                        <div class="form-group">
                           <input type='text' class="form-control" id='datetimepicker1' placeholder="select date" />
                           <span class="input-icon"><i class="fas fa-calendar-alt"></i></span>
                        </div>
                        <div class="form-group">
                           <input type="text" id="" class="form-control" placeholder="Number of guests">
                           <span class="input-icon"><i class="fas fa-user-friends"></i></span>
                        </div>
                        <div class="form-group">
                           <textarea class="form-control" rows="4" id="comment" placeholder="Write your message"></textarea>                        
                        </div>
                        <div class="form-group">
                        	<label>Preferred contact method:</label>
						      <div class="custom-control custom-radio">
						        <input type="radio" id="customRadio1" name="customRadio" class="custom-control-input" checked>
						        <label class="custom-control-label" for="customRadio1">Email</label>
						      </div>
						      <div class="custom-control custom-radio">
						        <input type="radio" id="customRadio2" name="customRadio" class="custom-control-input">
						        <label class="custom-control-label" for="customRadio2">Phone number</label>
						      </div>
 
                        </div>
                        <div class="btn-wrap text-center">
                        	<a href="javascript:void(0);" class="cstm-btn solid-btn">Request Pricing</a>
                        </div>
	                       
					 		</form>
				 	</div>
				 </aside>
			</div>
		</div>
	</div>


	</div>

	     <!-- Packages section here -->
      <div class="package-card" id="package-sec">
      	<div class="container lr-container">
	<div class="pannel-card1">
		<div class="card-heading">
			<h3>Packages</h3>			
		</div>		
		<div class="packages-content">

     <div class="packages-wrap">
    <div class="row"> 
  <div class="col-lg-4">

<div class="package-card">
  <div class="inn-card">
    <div class="title">
    	<h3 class="price-table-heading">Title Lorem ipsum</h3>
      <div class="icon">
        <i class="fas fa-hand-holding-usd"></i>
      </div>
      <span class="pkg-amount">250</span>
    </div>
    <div class="content">
      
      <div class="pricing-category">
      <div class="pkg-summary">
       <label>Decription</label> 
      <p class="card-text"></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc congue tristique tincidunt.</p><p></p>
      </div>
  </div>

      <!-- rk package details start -->
<div class="pricing-category">

      <div class="row">
        <div class="col-md-12">
      <label for="no_of_hours">Amenities</label>
                <ul class="pkg-listing-grp">  
       <li class="pkg-listing"><span class="fa-li"><i class="fas fa-check"></i></span>Bride dressing area</li>
     </ul>
     <!-- <div class="vendor-category">
      <div class="category-checkboxes category-title">
        Bride dressing area
      </div>
     </div> -->
                  <ul class="pkg-listing-grp">  
       <li class="pkg-listing"><span class="fa-li"><i class="fas fa-check"></i></span>Ceremony arch</li>
     </ul>
         </div>
<div class="col-md-12">
  <label for="no_of_hours">Games</label>
             
        <ul class="pkg-listing-grp">  
       <li class="pkg-listing"><span class="fa-li"><i class="fas fa-check"></i></span>Wedding</li>
     </ul>
        <ul class="pkg-listing-grp">  
       <li class="pkg-listing"><span class="fa-li"><i class="fas fa-check"></i></span>Reception</li>
     </ul>
             </div>
</div>
</div>
      
 <div class="pricing-category">
<table class="pricing-inn-table">
  <tbody><tr>
      <th><label>Price</label></th>
      <td>$250</td>
  </tr>
   <tr>
   <th><label>Number Of Hours</label></th>
    <td>5</td>
  </tr>
     <tr>
   <th><label>Number Of Days</label></th>
    <td>2</td>
  </tr>
  
    <tr>
      <th><label>Price Type</label></th>
     <td>Price Per Person</td>
   </tr>

 <tr>
  <th><label>Minimum Person</label></th>
     <td>1</td>
   </tr>
<tr>
<th><label>Maximum Person</label></th>
<td>400</td>
</tr>
<tr>
  <th>
<label>Status</label></th>
<td>Active</td>
</tr>
</tbody></table>
</div>

     <div class="pkg-footer text-center">
      <ul class="acrdn-action-btns single-row">
          <li><a href="http://49.249.236.30:6633/vendors/category/event-planner/packages/edit/2" class="action_btn dark-btn"><i class="fas fa-pencil-alt"></i></a></li>
          <li>          
            <a href="javascript:void(0);" class="action_btn btn-primary" id="addOns" onclick="openModel()" data-toggle="modal" data-target="#Addons"><i class="fas fa-plus"></i></a>
          </li>
          <li><a href="http://49.249.236.30:6633/vendors/category/event-planner/packages/delete/2" class="action_btn danger-btn"><i class="fas fa-trash-alt"></i></a></li>   
        </ul>
      </div>

    </div>
  </div>
</div> 




  </div>
  </div> 
</div>
</div>
</div>
</div>
</div>
						<!--Testimonial Page starts here-->
<section class="testimonial" id="review-sec">
   <div class="container lr-container" data-aos="fade-left" data-aos-duration="3000">
      <div class="sec-heading text-center">
         <h2>what people are saying about us</h2>
      </div>
      <div class="test owl-carousel owl-theme owl-loaded owl-drag">
         <div class="item">
            <div class="wrap">
               <figure>
                  <img class="commas" src="/frontend/images/commas.png" alt="" />
                  <img src="/frontend/images/test.png" alt="" />
               </figure>
               <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>
               <p class="name">John Smith</p>
            </div>
         </div>
         <div class="item">
            <div class="wrap">
               <figure>
                  <img class="commas" src="/frontend/images/commas.png" alt="" />
                  <img src="/frontend/images/test.png" alt="" />
               </figure>
               <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>
               <p class="name">John Smith</p>
            </div>
         </div>
         <div class="item">
            <div class="wrap">
               <figure>
                  <img class="commas" src="/frontend/images/commas.png" alt="" />
                  <img src="/frontend/images/test.png" alt="" />
               </figure>
               <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>
               <p class="name">John Smith</p>
            </div>
         </div>
      </div>
   </div>
</section>
	
@endsection

@section('scripts')

<script>
	/*----------------------------------------------   
 -Simple Scroll To Anchor
 -----------------------------------------------  */  	

document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function (e) {
        e.preventDefault();

        document.querySelector(this.getAttribute('href')).scrollIntoView({
            behavior: 'smooth'
        });
    });
});

setTimeout(()=>{
$('.test').owlCarousel({
    loop: true,
    margin: 10,
    nav: true,
    autoplay: true,
    responsive: {
        0: {
            items: 1
        },
        600: {
            items: 1
        },
        1000: {
            items: 1
        }
    }
});
},0);

</script>
@endsection
