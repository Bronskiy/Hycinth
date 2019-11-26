<div class="faq-sec" id="faq-sec">
	<div class="pannel-card">
	<!-- 	warning message -->
     <div class="warning-box space">
                    <div class="shadow-box">
                        <div class="info-tab tip-icon" title="Useful Tips"><span class="fas fa-exclamation-triangle"> </span> <i></i></div>
                        <div class="warning-text">
                            <p><strong>Error:</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis orci mauris, feugiat ac auctor ac, ultrices vitae lacus.</p>
                    </div>
                </div>
            </div>
  <!--    ============== -->


	 <?= notoficationBusinessFlash($types,$vendor->faqComment,$vendor->status) ?>		
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