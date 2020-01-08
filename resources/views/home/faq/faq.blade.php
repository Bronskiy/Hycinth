@extends('layouts.home')

@section('title') Faq @endsection
@section('description') Faq @endsection
@section('keywords') Faq @endsection

@section('content')
<section class="log-sign-banner" style="background:url('/frontend/images/banner-bg.png');">
    <div class="container">
        <div class="page-title text-center">
            <h1>faq</h1>
        </div>
    </div>    
</section>
 <section class="faq-sec"> 
 	<div class="container"> 
 		<div class="sec-card"> 
	      <div class="faq-content"> 
	      	<div class="sec-heading dark-sec-heading text-center">
         <h2>Frequently Asked Questions</h2>
      </div>
  <div class="faq-tab-wrap">
  <ul class="nav nav-tabs faq-tabs" role="tablist">
	<li class="nav-item">
		<a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab"><span class="tab-icon"><img src="/frontend/images/user-img.png"></span> User</a>
	</li>
	<li class="nav-item">
		<a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab"><span class="tab-icon"><img src="/frontend/images/user-img.png"></span> Vendor</a>
	</li>
</ul><!-- Tab panes -->
<div class="tab-content">
	<div class="tab-pane active" id="tabs-1" role="tabpanel">
        <div class="faq-acc-wrap">
        	<div id="faq-pg-accordion" class="faq-pg-accordion">
        	 <div class="row">
        	 	<div class="col-lg-6">
			  <div class="card">
			    <div class="card-header" id="headingOne">
			      <h2 class="mb-0">
			        <button class="d-flex align-items-center justify-content-between btn btn-link collapsed" data-toggle="collapse" data-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
			          Sed ut perspiciatis unde omnis iste
			          <span class="fa-stack fa-2x">
			              <i class="fas fa-circle fa-stack-2x"></i>
			            <i class="fas fa-plus fa-stack-1x fa-inverse"></i>
			          </span>
			        </button>
			      </h2>
			    </div>
			    <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#faq-pg-accordion">
			      <div class="card-body">
			          <p> Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
                        <p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>
			      </div>
			    </div>
			  </div>
			</div>
			<div class="col-lg-6">
			  <div class="card">
			    <div class="card-header" id="headingTwo">
			      <h2 class="mb-0">
			        <button class="d-flex align-items-center justify-content-between btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
			          Sed ut perspiciatis unde
			          <span class="fa-stack fa-2x">
			            <i class="fas fa-circle fa-stack-2x"></i>
			            <i class="fas fa-plus fa-stack-1x fa-inverse"></i>
			          </span>
			        </button>
			      </h2>
			    </div>
			    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#faq-pg-accordion">
			      <div class="card-body">
			        <p> Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
			      </div>
			    </div>
			  </div>
			</div>

				<div class="col-lg-6">
			  <div class="card">
			    <div class="card-header" id="headingThree">
			      <h2 class="mb-0">
			        <button class="d-flex align-items-center justify-content-between btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
			          Sed ut perspiciatis unde
			          <span class="fa-stack fa-2x">
			            <i class="fas fa-circle fa-stack-2x"></i>
			            <i class="fas fa-plus fa-stack-1x fa-inverse"></i>
			          </span>
			        </button>
			      </h2>
			    </div>
			    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#faq-pg-accordion">
			      <div class="card-body">
			        <p> Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
			      </div>
			    </div>
			  </div>
			</div>

				<div class="col-lg-6">
			  <div class="card">
			    <div class="card-header" id="headingFour">
			      <h2 class="mb-0">
			        <button class="d-flex align-items-center justify-content-between btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
			          Sed ut perspiciatis unde
			          <span class="fa-stack fa-2x">
			            <i class="fas fa-circle fa-stack-2x"></i>
			            <i class="fas fa-plus fa-stack-1x fa-inverse"></i>
			          </span>
			        </button>
			      </h2>
			    </div>
			    <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#faq-pg-accordion">
			      <div class="card-body">
			        <p> Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
			      </div>
			    </div>
			  </div>
			</div>

				<div class="col-lg-6">
			  <div class="card">
			    <div class="card-header" id="headingFive">
			      <h2 class="mb-0">
			        <button class="d-flex align-items-center justify-content-between btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
			          Sed ut perspiciatis unde
			          <span class="fa-stack fa-2x">
			            <i class="fas fa-circle fa-stack-2x"></i>
			            <i class="fas fa-plus fa-stack-1x fa-inverse"></i>
			          </span>
			        </button>
			      </h2>
			    </div>
			    <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#faq-pg-accordion">
			      <div class="card-body">
			        <p> Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
			      </div>
			    </div>
			  </div>
			</div>
				<div class="col-lg-6">
			  <div class="card">
			    <div class="card-header" id="headingEight">
			      <h2 class="mb-0">
			        <button class="d-flex align-items-center justify-content-between btn btn-link collapsed" data-toggle="collapse" data-target="#collapseEight" aria-expanded="false" aria-controls="collapseEight">
			          Sed ut perspiciatis unde
			          <span class="fa-stack fa-2x">
			            <i class="fas fa-circle fa-stack-2x"></i>
			            <i class="fas fa-plus fa-stack-1x fa-inverse"></i>
			          </span>
			        </button>
			      </h2>
			    </div>
			    <div id="collapseEight" class="collapse" aria-labelledby="headingEight" data-parent="#faq-pg-accordion">
			      <div class="card-body">
			        <p> Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
			      </div>
			    </div>
			  </div>
			</div>
				<div class="col-lg-6">
			  <div class="card">
			    <div class="card-header" id="headingSix">
			      <h2 class="mb-0">
			        <button class="d-flex align-items-center justify-content-between btn btn-link collapsed" data-toggle="collapse" data-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
			          Sed ut perspiciatis unde
			          <span class="fa-stack fa-2x">
			            <i class="fas fa-circle fa-stack-2x"></i>
			            <i class="fas fa-plus fa-stack-1x fa-inverse"></i>
			          </span>
			        </button>
			      </h2>
			    </div>
			    <div id="collapseSix" class="collapse" aria-labelledby="headingSix" data-parent="#faq-pg-accordion">
			      <div class="card-body">
			        <p> Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
			      </div>
			    </div>
			  </div>
			</div>
				<div class="col-lg-6">
			  <div class="card">
			    <div class="card-header" id="headingSeven">
			      <h2 class="mb-0">
			        <button class="d-flex align-items-center justify-content-between btn btn-link collapsed" data-toggle="collapse" data-target="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
			          Sed ut perspiciatis unde
			          <span class="fa-stack fa-2x">
			            <i class="fas fa-circle fa-stack-2x"></i>
			            <i class="fas fa-plus fa-stack-1x fa-inverse"></i>
			          </span>
			        </button>
			      </h2>
			    </div>
			    <div id="collapseSeven" class="collapse" aria-labelledby="headingSeven" data-parent="#faq-pg-accordion">
			      <div class="card-body">
			        <p> Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
			      </div>
			    </div>
			  </div>
			</div>



		   </div>
			</div>
        </div> <!-- faq-acc-wrap -->

        	</div>
	<div class="tab-pane" id="tabs-2" role="tabpanel">
		 <div class="faq-acc-wrap">
        	<div id="faq-vendor-accordion" class="faq-pg-accordion">
        	 <div class="row">
        	 	<div class="col-lg-6">
			  <div class="card">
			    <div class="card-header" id="heading-vendoe-One">
			      <h2 class="mb-0">
			        <button class="d-flex align-items-center justify-content-between btn btn-link collapsed" data-toggle="collapse" data-target="#collapse-vendoe-One" aria-expanded="false" aria-controls="collapse-vendoe-One">
			          Sed ut perspiciatis unde omnis iste
			          <span class="fa-stack fa-2x">
			              <i class="fas fa-circle fa-stack-2x"></i>
			            <i class="fas fa-plus fa-stack-1x fa-inverse"></i>
			          </span>
			        </button>
			      </h2>
			    </div>
			    <div id="collapse-vendoe-One" class="collapse" aria-labelledby="heading-vendoe-One" data-parent="#faq-vendor-accordion">
			      <div class="card-body">
			          <p> Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
                        <p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>
			      </div>
			    </div>
			  </div>
			</div>
			<div class="col-lg-6">
			  <div class="card">
			    <div class="card-header" id="heading-vendoe-Two">
			      <h2 class="mb-0">
			        <button class="d-flex align-items-center justify-content-between btn btn-link collapsed" data-toggle="collapse" data-target="#collapse-vendoe-Two" aria-expanded="false" aria-controls="collapse-vendoe-Two">
			          Sed ut perspiciatis unde
			          <span class="fa-stack fa-2x">
			            <i class="fas fa-circle fa-stack-2x"></i>
			            <i class="fas fa-plus fa-stack-1x fa-inverse"></i>
			          </span>
			        </button>
			      </h2>
			    </div>
			    <div id="collapse-vendoe-Two" class="collapse" aria-labelledby="heading-vendoe-Two" data-parent="#faq-vendor-accordion">
			      <div class="card-body">
			        <p> Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
			      </div>
			    </div>
			  </div>
			</div>

				<div class="col-lg-6">
			  <div class="card">
			    <div class="card-header" id="heading-vendoe-Three">
			      <h2 class="mb-0">
			        <button class="d-flex align-items-center justify-content-between btn btn-link collapsed" data-toggle="collapse" data-target="#collapse-vendoe-Three" aria-expanded="false" aria-controls="collapse-vendoe-Three">
			          Sed ut perspiciatis unde
			          <span class="fa-stack fa-2x">
			            <i class="fas fa-circle fa-stack-2x"></i>
			            <i class="fas fa-plus fa-stack-1x fa-inverse"></i>
			          </span>
			        </button>
			      </h2>
			    </div>
			    <div id="collapse-vendoe-Three" class="collapse" aria-labelledby="heading-vendoe-Three" data-parent="#faq-vendor-accordion">
			      <div class="card-body">
			        <p> Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
			      </div>
			    </div>
			  </div>
			</div>

				<div class="col-lg-6">
			  <div class="card">
			    <div class="card-header" id="heading-vendoe-Four">
			      <h2 class="mb-0">
			        <button class="d-flex align-items-center justify-content-between btn btn-link collapsed" data-toggle="collapse" data-target="#collapse-vendoe-Four" aria-expanded="false" aria-controls="collapse-vendoe-Four">
			          Sed ut perspiciatis unde
			          <span class="fa-stack fa-2x">
			            <i class="fas fa-circle fa-stack-2x"></i>
			            <i class="fas fa-plus fa-stack-1x fa-inverse"></i>
			          </span>
			        </button>
			      </h2>
			    </div>
			    <div id="collapse-vendoe-Four" class="collapse" aria-labelledby="heading-vendoe-Four" data-parent="#faq-vendor-accordion">
			      <div class="card-body">
			        <p> Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
			      </div>
			    </div>
			  </div>
			</div>

				<div class="col-lg-6">
			  <div class="card">
			    <div class="card-header" id="heading-vendoe-Five">
			      <h2 class="mb-0">
			        <button class="d-flex align-items-center justify-content-between btn btn-link collapsed" data-toggle="collapse" data-target="#collapse-vendoe-Five" aria-expanded="false" aria-controls="collapse-vendoe-Five">
			          Sed ut perspiciatis unde
			          <span class="fa-stack fa-2x">
			            <i class="fas fa-circle fa-stack-2x"></i>
			            <i class="fas fa-plus fa-stack-1x fa-inverse"></i>
			          </span>
			        </button>
			      </h2>
			    </div>
			    <div id="collapse-vendoe-Five" class="collapse" aria-labelledby="heading-vendoe-Five" data-parent="#faq-vendor-accordion">
			      <div class="card-body">
			        <p> Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
			      </div>
			    </div>
			  </div>
			</div>
		
			
			



		   </div>
			</div>
        </div> <!-- faq-acc-wrap -->
	</div>
</div>


	  </div>
	</div>
     </div>
    </div>
</section>




<!-- copy code from login page please change that -->

<section class="how-its-work-sec aos-init aos-animate" data-aos="fade-right" data-aos-duration="3000">
   <div class="container">
      <div class="sec-heading text-center">
         <h4>{{ getAllValueWithMeta('section1_title', 'login') }}</h4>
         <h2>{{ getAllValueWithMeta('section1_tagline', 'login') }}</h2>
      </div>
      <div class="row">
         <div class="col-lg-10 offset-lg-1">
            <div class="video-container">
               <figure>
                  <video class="video" id="bVideo" loop="" style="width: 100% !important;" height="100%" poster="{{ url('/uploads').'/'.getAllValueWithMeta('section1_video_poster', 'login') }}">
                     <source src="{{ url('/uploads').'/'.getAllValueWithMeta('section1_video', 'login') }}" type="video/mp4">
                  </video>
                  <div id="playButton" class="playButton" onclick="playPause()">
                     <span><i class="fas fa-play-circle"></i></span>
                  </div>
               </figure>
            </div>
         </div>
      </div>
   </div>
</section>

<section class="testimonial">
   <div class="container aos-init" data-aos="fade-left" data-aos-duration="3000">
      <div class="sec-heading text-center">
         <h2>{{ getAllValueWithMeta('section2_title', 'login') }}</h2>
      </div>
      <div class="test owl-carousel owl-theme owl-loaded owl-drag">
         
         
         
      <div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(-4480px, 0px, 0px); transition: all 0.25s ease 0s; width: 7840px;"><div class="owl-item cloned" style="width: 1110px; margin-right: 10px;"><div class="item">
            <div class="wrap">
               <figure>
                  <img class="commas" src="/frontend/images/commas.png" alt="">
                  <img src="/frontend/images/test.png" alt="">
               </figure>
               <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>
               <p class="name">John Smith</p>
            </div>
         </div></div><div class="owl-item cloned" style="width: 1110px; margin-right: 10px;"><div class="item">
            <div class="wrap">
               <figure>
                  <img class="commas" src="/frontend/images/commas.png" alt="">
                  <img src="/frontend/images/test.png" alt="">
               </figure>
               <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>
               <p class="name">John Smith</p>
            </div>
         </div></div><div class="owl-item" style="width: 1110px; margin-right: 10px;"><div class="item">
            <div class="wrap">
               <figure>
                  <img class="commas" src="/frontend/images/commas.png" alt="">
                  <img src="/frontend/images/test.png" alt="">
               </figure>
               <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>
               <p class="name">John Smith</p>
            </div>
         </div></div><div class="owl-item" style="width: 1110px; margin-right: 10px;"><div class="item">
            <div class="wrap">
               <figure>
                  <img class="commas" src="/frontend/images/commas.png" alt="">
                  <img src="/frontend/images/test.png" alt="">
               </figure>
               <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>
               <p class="name">John Smith</p>
            </div>
         </div></div><div class="owl-item active" style="width: 1110px; margin-right: 10px;"><div class="item">
            <div class="wrap">
               <figure>
                  <img class="commas" src="/frontend/images/commas.png" alt="">
                  <img src="/frontend/images/test.png" alt="">
               </figure>
               <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>
               <p class="name">John Smith</p>
            </div>
         </div></div><div class="owl-item cloned" style="width: 1110px; margin-right: 10px;"><div class="item">
            <div class="wrap">
               <figure>
                  <img class="commas" src="/frontend/images/commas.png" alt="">
                  <img src="/frontend/images/test.png" alt="">
               </figure>
               <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>
               <p class="name">John Smith</p>
            </div>
         </div></div><div class="owl-item cloned" style="width: 1110px; margin-right: 10px;"><div class="item">
            <div class="wrap">
               <figure>
                  <img class="commas" src="/frontend/images/commas.png" alt="">
                  <img src="/frontend/images/test.png" alt="">
               </figure>
               <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>
               <p class="name">John Smith</p>
            </div>
         </div></div></div></div><div class="owl-nav"><button type="button" role="presentation" class="owl-prev"><span aria-label="Previous">‹</span></button><button type="button" role="presentation" class="owl-next"><span aria-label="Next">›</span></button></div><div class="owl-dots"><button role="button" class="owl-dot"><span></span></button><button role="button" class="owl-dot"><span></span></button><button role="button" class="owl-dot active"><span></span></button></div></div>
   </div>
</section>

@endsection

@section('scripts')
<script type="text/javascript">
	$("#faq-pg-accordion").on("hide.bs.collapse show.bs.collapse", e => {
  $(e.target)
    .prev()
    .find("i:last-child")
    .toggleClass("fa-minus fa-plus");
});
</script>
@endsection
