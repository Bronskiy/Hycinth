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
                              	@if($vendor->VideoGallery->count() > 0)
						           
						          	@foreach($vendor->VideoGallery as $video)
						          	<?php
                                          $data = json_decode($video->keyValue);

                                          $videoLink = !empty($data) > 0 ? $data->link : '';
                                          $videotitle = !empty($data) > 0 ? $data->title : '';
						          	 ?>
						            <li>
						            	<a href="javascript:void(0);" class="play-btn play-model-video" data-link="{{$videoLink}}" data-title="{{$videotitle}}">
						            		<span><i class="far fa-play-circle"></i></span>
						            	</a>
						              <img src="/frontend/images/menu-vendor.png" />
						            </li>
						            @endforeach
						         @endif
						             
						          </ul>
						        </div>
						        <div id="Video-carousel" class="flexslider">
						          <ul class="slides">
						         @if($vendor->VideoGallery->count() > 0)
						           
						          	@foreach($vendor->VideoGallery as $video)
						          	<?php
                                          $data = json_decode($video->keyValue);

                                          $videoLink = !empty($data) > 0 ? $data->link : '';
                                          $videotitle = !empty($data) > 0 ? $data->title : '';
						          	 ?>
						            <li>
						            	 
						              <img src="/frontend/images/menu-vendor.png" />
						            </li>
						            @endforeach
						         @endif
						             
						          </ul>
						        </div>
						  	<!-- END here -->
						  </div>
						</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Video modal -->
 <div class="modal" id="Video-Modal">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Video title here..</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
        <div class="youtube-video-container">
        	<iframe src="" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </div>
      </div>

      <!-- Modal footer -->
      <!-- <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div> -->

    </div>
  </div>
</div>