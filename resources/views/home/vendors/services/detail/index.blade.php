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
					<div class="col-lg-4 sticky-form-sidebar">
						<div class="cstm-btn-grp text-right">
							<a href="javascript:void(0);" class="cstm-btn"><span class="btn-icon"><i class="fas fa-handshake"></i></span> Hired?</a>
							<a href="javascript:void(0);" class="cstm-btn"><span class="btn-icon"><i class="fas fa-heart"></i></span> Save</a>
						</div>
					</div>
				
			    </div>
			
		</div>

                     <div class="deatil-navigation-wrap">			
							<!-- <ul class="detail-navigation">
								<li><a href="#" data-scroll="image-gallery">Photos</a></li>
					
								<li><a href="#faq-sec" data-scroll="faq-sec">FAQs</a></li>
								<li><a href="#venue-sec" data-scroll="venue-sec">Venue</a></li>                              
								<li><a href="#description-sec" data-scroll="description-sec">Description</a></li>
								<li><a href="#AmenitiesGames-sec" data-scroll="AmenitiesGames-sec">Amenities and Games</a></li>
								<li><a href="#deals-sec" data-scroll="deals-sec">Deals</a></li>	
								<li><a href="#review-sec" data-scroll="review-sec">Reviews</a></li>
							</ul>  -->  

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
		  <div class="row">
			<div class="col-lg-8">
		











@include('home.vendors.services.detail.gallery')



				

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

 
		</div>
	</div>
</div>



@include('home.vendors.services.detail.venue')






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





@include('home.vendors.services.detail.reviews')
















					
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

@include('home.vendors.services.detail.packages')
@include('home.vendors.services.detail.compare')

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

    
jQuery(function() {

      
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

  let comp_pack_arr = [];
  $('.custom-control-input').click(function() {
    
    const package = $(this).data('package');
    const pack_index = $.inArray(package.id, comp_pack_arr);
    let pack = `<div class="" id="com_pack_id_${package.id}">${package.title}<a href="#" class="remove_field" data-pack="${package.id}">Remove</a></div>`;
// $('#compare-div').empty();

    if($(this).is(':checked')) {
      comp_pack_arr.push(package.id);
      $('#compare-div').append(pack);
    } else {
      // comp_pack_arr = comp_pack_arr.filter(f => f !== package.id);
      comp_pack_arr.splice(pack_index, 1);
      $(`#com_pack_id_${package.id}`).remove();
    }   
     console.log('add ', comp_pack_arr ); 
    });

  $('#compare-div').on("click",".remove_field", function(e) {
    e.preventDefault();
    const pid = $(this).data('pack');
    const rm_index = $.inArray(pid, comp_pack_arr);
    console.log(`#customCheck_${comp_pack_arr[rm_index]}`);
    $(`#customCheck_${comp_pack_arr[rm_index]}`).prop("checked", false);
    comp_pack_arr.splice(rm_index, 1);
    $(this).parent('div').remove();
    
    console.log('rm ',  comp_pack_arr );
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
