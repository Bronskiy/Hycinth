@extends('layouts.home')
@section('content')
<section class="main-banner" style="background:url('/frontend/images/banner-bg.png');">
        <div class="container">
            <div class="banner-content">
                <h1 class="banner-heading">Vendor Details</h1>
            </div>
        </div>
    </section>

    <section class="vendor-detail-header">
    	<div class="container">
		 <div class="sec-card">
		<div class="page-head">
			<div class="container">
				<div class="row">
					<div class="col-lg-8">
						<div class="page-header">
							<figure class="head-logo"><img src="/frontend/images/vendor-03.png"></figure>
							<div class="heading-details">
								<h2> Lorem ipsum dolor sit amet consectetur</h2>
								<p class="address-line"><span class="location-icon"><i class="fas fa-map-marker-alt"></i></span>8762 Newbridge Rd. New City, NY 10956</p>
							</div>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="cstm-btn-grp text-right">
							<a href="javascript:void(0);" class="cstm-btn"><span class="btn-icon"><i class="fas fa-handshake"></i></span> Hired?</a>
							<a href="javascript:void(0);" class="cstm-btn"><span class="btn-icon"><i class="fas fa-heart"></i></span> Save</a>
						</div>
					</div>
					<div class="col-lg-12">
						<div class="deatil-navigation-wrap">	
							<ul class="detail-navigation">
								<li><a href="javascript:void(0);">Photos</a></li>
								<li><a href="javascript:void(0);">About</a></li>
								<li><a href="javascript:void(0);">Reviews</a></li>
								<li><a href="javascript:void(0);">FAQs</a></li>
								<li><a href="javascript:void(0);">Real Weddings</a></li>
								<li><a href="javascript:void(0);">Deals</a></li>
								<li><a href="javascript:void(0);">Network</a></li>
							</ul>		
	                     </div>
					</div>
			    </div>
			</div>
		</div>
	</div>
		</div>
	</section>

	<div class="main-detail">
		<div class="container">
		  <div class="row">
			<div class="col-lg-8">
				<div class="product-gallery-wrap">
					<ul class="nav nav-tabs" id="galleryTab" role="tablist">
						  <li class="nav-item">
						    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Photos</a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Videos</a>
						  </li>
						</ul>
						<div class="tab-content" id="galleryTabContent">
						  <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
						  	<!-- Photo gallery sec -->
						  	 <div id="slider" class="flexslider">
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
						        <div id="carousel" class="flexslider">
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
						  <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">profile...</div>
						</div>
				</div>
				


<!-- 				<div class="other-detail-wrap">
					<div id="detail-accordion">

  <div class="card">
    <div class="card-header">
      <a class="card-link" data-toggle="collapse" href="#collapseOne">
        Lorem ipsum dolor sit amet
      </a>
    </div>
    <div id="collapseOne" class="collapse show" data-parent="#detail-accordion">
      <div class="card-body">
        Lorem ipsum dolor sit amet
      </div>
    </div>
  </div>

  <div class="card">
    <div class="card-header">
      <a class="collapsed card-link" data-toggle="collapse" href="#collapseTwo">
        Lorem ipsum dolor sit amet
      </a>
    </div>
    <div id="collapseTwo" class="collapse" data-parent="#detail-accordion">
      <div class="card-body">
       Lorem ipsum dolor sit amet
      </div>
    </div>
  </div>

  <div class="card">
    <div class="card-header">
      <a class="collapsed card-link" data-toggle="collapse" href="#collapseThree">
        Collapsible Group Item #3
      </a>
    </div>
    <div id="collapseThree" class="collapse" data-parent="#detail-accordion">
      <div class="card-body">
        Lorem ipsum..
      </div>
    </div>
  </div>

</div>
				</div> -->
<!-- Overall reating detail -->

<!-- ================================ -->
				<!--Testimonial Page starts here-->
<!-- <section class="testimonial">
   <div class="container" data-aos="fade-left" data-aos-duration="3000">
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
</section> -->

<div class="faq-sec">
	<div class="pannel-card">
		<div class="card-heading">
			<h3>FAQ</h3>			
		</div>		
		<div class="faq-content">
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
			</div>
		</div>
	</div>
</div>
<!-- End here -->
<div class="venue-card">
	<div class="pannel-card">
		<div class="card-heading">
			<h3>Venue details</h3>			
		</div>		
		<div class="venue-content">
			<div class="row">
				<div class="col-lg-6">
					<div class="feature-wrap">
						<span class="feature-icon">
							<i class="fas fa-boxes"></i>
						</span>
						<div class="feature-detail">
							<h4>Style:</h4>
							<p>Hotel/Resort, Ballrooms, Outdoor</p>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="feature-wrap">
						<span class="feature-icon">
							<i class="fas fa-boxes"></i>
						</span>
						<div class="feature-detail">
							<h4>Style:</h4>
							<p>Hotel/Resort, Ballrooms, Outdoor</p>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="feature-wrap">
						<span class="feature-icon">
							<i class="fas fa-boxes"></i>
						</span>
						<div class="feature-detail">
							<h4>Style:</h4>
							<p>Hotel/Resort, Ballrooms, Outdoor</p>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="feature-wrap">
						<span class="feature-icon">
							<i class="fas fa-boxes"></i>
						</span>
						<div class="feature-detail">
							<h4>Style:</h4>
							<p>Hotel/Resort, Ballrooms, Outdoor</p>
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

   <div class="summary-card">
	<div class="pannel-card">
		<div class="card-heading">
			<h3>Lorem ipsum</h3>			
		</div>		
		<div class="venue-content">
          <div class="summary-details">
					<h4 class="faq-question">Lorem ipsum dolor sit amet</h4>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean eu pulvinar enim, nec feugiat nibh. Etiam mattis condimentum velit. Donec sodales non tortor vitae condimentum. Fusce eleifend sapien ut lorem imperdiet interdum. Aliquam semper dui a diam porttitor, a volutpat nisi pretium. Phasellus et dolor quis ante suscipit mattis eu vitae felis. Mauris malesuada mauris turpis, nec lacinia magna venenatis nec. Curabitur massa orci, rhoncus vitae ultrices sed, tempus vitae elit. Fusce vel lacus ut nunc ultrices varius. Fusce ut mauris felis. Proin felis leo, malesuada ac facilisis non, malesuada et nibh. Etiam ligula purus, vestibulum ac feugiat ac, gravida ac turpis. Pellentesque fringilla massa id pharetra porttitor.</p>
				</div>
			</div>
		</div>
	</div>

<!-- ====================== -->
					
				</div>
			<div class="col-lg-4">
				 <aside>
				 	<div class="side-form-wrap">
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
	
@endsection