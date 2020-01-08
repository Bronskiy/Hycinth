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
		<p>Second Panel</p>
	</div>
</div>


	  </div>
	</div>
     </div>
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
