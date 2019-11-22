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
							<a href="javascript:void(0);" class="cstm-btn"><span class="btn-icon"><i class="fas fa-handshake"></i></span> {{ $currentStatus }}</a>
							 
						</div>
					</div>
				
			    </div>
			
		</div>

                     <div class="deatil-navigation-wrap">			
						 
             <div class="owl-carousel owl-theme nav-menu-slider">
                        <div class="item">
                          <a href="#" data-scroll="image-gallery"><!-- <span class="nav-icon"><i class="fas fa-camera-retro"></i></span> --> Photos</a>
                        </div> 
                        <div class="item">
                          <a href="#faq-sec" data-scroll="faq-sec"><!-- <span class="nav-icon"><i class="fas fa-question-circle"></i></span> --> FAQs</a>
                        </div> 
                        <div class="item">
                            <a href="#venue-sec" data-scroll="venue-sec"> <!-- <span class="nav-icon"><i class="fas fa-clipboard-list"></i></span> --> Venue</a>
                        </div>
                        <div class="item">
                           <a href="#description-sec" data-scroll="description-sec"> <!-- <span class="nav-icon"><i class="fas fa-clipboard-list"></i></span> --> Description</a>
                        </div>
                        <div class="item">
                          <a href="#AmenitiesGames-sec" data-scroll="AmenitiesGames-sec"><!--  <span class="nav-icon"><i class="fas fa-question-circle"></i></span> --> Amenities and Games</a>
                        </div>
                        <div class="item">
                         <a href="#deals-sec" data-scroll="deals-sec"><!--  <span class="nav-icon"><i class="fas fa-question-circle"></i></span> --> Deals</a>
                        </div>
                        <div class="item">
                          <a href="#review-sec" data-scroll="review-sec"><!-- <span class="nav-icon"><i class="fas fa-star"></i></span> --> Reviews</a>
                        </div>
                    </div>
                </div>


        






		              </div>
								
	</div>
		</div>
	</section>

		

  <div class="main-detail">
    <div class="container lr-container">
			@include('vendors.errors')
		  <div class="row">
			<div class="col-lg-8">
		

 

@include('home.vendors.services.detail.gallery')
 
 
@include('home.vendors.services.detail.faqs')
@include('home.vendors.services.detail.venue')
@include('home.vendors.services.detail.description')

 



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

                     @foreach($games->get() as $event)
                             <li>{{$event->amenity->name}}</li>
                     @endforeach

           		  @endif          		  	 
           		  	    

           		  </ul>
           	</div>

           </div>
      </div>
   </div>
</div>







   <div class="summary-card" id="description-sec">
	<div class="pannel-card">
		<div class="card-heading">
			<h3>Prohibtion & Restrictions</h3>			
		</div>		
		<div class="summary-details-content">
                 <div class="summary-details detail-listing">
					 
                     
         <?= ($vendor->prohibtion->count() > 0) ? $vendor->prohibtion->keyValue : 'No Prohibtion & Restrictions' ?>
                     
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





@include('home.vendors.services.detail.reviews')
















					
				</div>
			


@if(Auth::check() && Auth::user()->role == "vendor")

@include('home.vendors.services.detail.vendor_approval')

@else
@include('home.vendors.services.detail.admin_review_form')

@endif







		</div>
	</div>


	</div>












@include('home.vendors.services.detail.packages')
@include('home.vendors.services.detail.testimonial')


	
@endsection

@section('scripts')

<script>




    
jQuery(function(){

      
      jQuery("body").on('click','.play-model-video',function(e){
            e.preventDefault();

            var url = jQuery( this ).attr('data-link');
            var title = jQuery( this ).attr('data-title');

            $("body").find('#Video-Modal').find('.modal-title').html(title);
            $("body").find('#Video-Modal').find('iframe').attr('src',url+'?autoplay=1');
            $("body").find('#Video-Modal').modal('show');
      });


         $("body").find('#Video-Modal').on('hidden.bs.modal', function () {
                $('#Video-Modal').find('iframe').attr('src','');
         });

});

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



    $('.nav-menu-slider').owlCarousel({
       loop:false,
       autoWidth:true,
       nav:true,
       dots:false,
       mouseDrag:true
    })


</script>
@endsection
