 <div class="summary-card" id="description-sec">
	<div class="pannel-card">
		
		
		 	 <?= notoficationBusinessFlash($types,$vendor->DescriptionComment,$vendor->status) ?>	
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