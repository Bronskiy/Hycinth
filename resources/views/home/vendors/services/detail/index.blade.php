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
				<div class="summary-details">
					<h2>Lorem ipsum dolor sit amet</h2>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean eu pulvinar enim, nec feugiat nibh. Etiam mattis condimentum velit. Donec sodales non tortor vitae condimentum. Fusce eleifend sapien ut lorem imperdiet interdum. Aliquam semper dui a diam porttitor, a volutpat nisi pretium. Phasellus et dolor quis ante suscipit mattis eu vitae felis. Mauris malesuada mauris turpis, nec lacinia magna venenatis nec. Curabitur massa orci, rhoncus vitae ultrices sed, tempus vitae elit. Fusce vel lacus ut nunc ultrices varius. Fusce ut mauris felis. Proin felis leo, malesuada ac facilisis non, malesuada et nibh. Etiam ligula purus, vestibulum ac feugiat ac, gravida ac turpis. Pellentesque fringilla massa id pharetra porttitor.</p>
				</div>
				<div class="other-detail-wrap">
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
				</div>
					
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
                           <span class="input-icon"><i class="fas fa-phone-alt"></i></span>
                        </div>
                        <div class="form-group">
                           <input type='text' class="form-control" id='datetimepicker1' />
                           <span class="input-icon"><i class="fas fa-calendar-alt"></i></span>
                        </div>
                        <div class="form-group">
                           <input type="text" id="" class="form-control" placeholder="Number of guests">
                           <span class="input-icon"><i class="fas fa-user-friends"></i></span>
                        </div>
	                       
					 		</form>
				 	</div>
				 </aside>
			</div>
		</div>
	</div>
	</div>
	
@endsection