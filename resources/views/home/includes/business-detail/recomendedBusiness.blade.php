<div class="side-form-wrap">
  <div class="min-btn-wrap">
  <button type="button" class="cstm-btn solid btn" data-toggle="modal" data-target="#CstmPackage">Custom Pkg</button>
</div>
</div>
<div class="rec-vendor-wrap mt-5">
<h3 class="form-heading">Recommended Vendor</h3>

@foreach($recommendedVendor as $business)


  <div class="recom-vendor-card text-center aos-init aos-animate" data-aos="fade-up" data-aos-duration="3000">
         
           <figure> 
           	<img src="{{url(getBasicInfo($business->vendors->id, $business->category_id,'basic_information','cover_photo'))}}"/>
           </figure>
            <div class="rec-vend-detail">
            <h3 class="mb-2">{{ $business->title }}</h3>
                <p>{{ getBasicInfo($business->vendors->id, $business->category_id,'basic_information','short_description') }}</p>
          </div>
          <div class="btn-wrap mini-btn-wrap">
           <a href="{{ route('vendor_detail_page', ['catslug' => $business->category->slug, 'bslug' => $business->business_url]) }}" class="cstm-btn solid-btn" target="_blank">More Detail</a>
         </div>
 </div>


@endforeach
</div>


<!-- custom package modal -->
<!-- The Modal -->
<div class="modal" id="CstmPackage">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <!-- <div class="modal-header">
        <h4 class="modal-title">Custom Package</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div> -->
      <button type="button" class="close" data-dismiss="modal">&times;</button>
      <div class="cstm-pkg-banner" style="background: url('/frontend/images/status-info-bg.jpg');">
         <div class="cstm-pkg-content">
             <h2>Create Your Custom Package here</h2>
         </div>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
         <div class="cstm-pkg-form-wrap">
           <form class="cstm-pkg-form">
             <div class="row">
               <div class="col-lg-6">
                 <div class="form-group">
                  <label>Title<span class="required-star">*</span></label>
                      <div class="form-control-wrap">
                           <input type="text" class="form-control" placeholder="" id="">          
                           <span class="input-icon"><i class="fas fa-pen"></i></span>
                        </div>
                      </div>
               </div>
                <div class="col-lg-6">
                 <div class="form-group">
                  <label>Person capacity</label>
                      <div class="form-control-wrap">
                        <div class="form-field-grp">
                        <div class="row no-gutters">
                          <div class="col-6">
                           <input type="text" class="form-control right-radius-none" placeholder="Minimum person" id="">
                         </div>
                         <div class="col-6">
                           <input type="text" class="form-control left-radius-none" placeholder="Maximum person" id=""> 
                         </div>
                           </div>          
                           <span class="input-icon"><i class="fas fa-users"></i></span>
                        </div>
                      </div>
                      </div>
               </div>
                <div class="col-lg-4">
                 <div class="form-group">
                  <label>Price</label>
                      <div class="form-control-wrap">
                           <input type="text" class="form-control" placeholder="" id="">          
                           <span class="input-icon"><i class="fas fa-money-check-alt"></i></span>
                        </div>
                      </div>
               </div>
               <div class="col-lg-4">
                 <div class="form-group">
                  <label>Number Of Hours</label>
                      <div class="form-control-wrap">
                           <input type="text" class="form-control" placeholder="" id="">          
                           <span class="input-icon"><i class="far fa-clock"></i></span>
                        </div>
                      </div>
               </div>
                <div class="col-lg-4">
                 <div class="form-group">
                  <label>Number Of Days</label>
                      <div class="form-control-wrap">
                           <input type="text" class="form-control" placeholder="" id="">          
                           <span class="input-icon"><i class="fas fa-calendar-alt"></i></span>
                        </div>
                      </div>
               </div>
               <div class="col-lg-12">
                <div class="cstm-pkg-checkbox-wrap">
                 <div class="form-group">
         <div class="row">
            <div class="col-lg-12">
            <label class="form-label" for="no_of_hours">Do You Have Games?</label>
            </div>
                  <div class="col-lg-4">
                   <div class="pkg-ckeck-list">
                      <div class="category-checkboxes category-title">
                      <input type="checkbox" name="" value="4" id="game-1">
                           <label for="game-1">ame  </label> 
                    </div>
                   </div>
                  </div>       
                    <div class="col-lg-4">
                   <div class="pkg-ckeck-list">
                      <div class="category-checkboxes category-title">
                      <input type="checkbox" name="games[]" value="7" id="game-2">
                           <label for="game-2">kabull  </label> 
                    </div>
                   </div>
                  </div>  
                  <div class="col-lg-4">
                   <div class="pkg-ckeck-list">
                      <div class="category-checkboxes category-title">
                      <input type="checkbox" name="games[]" value="7" id="game-3">
                           <label for="game-3">kabul  </label> 
                    </div>
                   </div>
                  </div>      
                                          
                                </div>
             </div>
           </div>
               </div>

               <div class="col-lg-12">
                <div class="cstm-pkg-checkbox-wrap">
                 <div class="form-group">
                <div class="row">
                  <div class="col-lg-12">
                  <label class="form-label" for="no_of_hours">Do You Have Event?</label>
                </div>

                   <div class="col-lg-4">
                   <div class="pkg-ckeck-list">
                      <div class="category-checkboxes category-title">
                      <input type="checkbox" name="" value="2" id="event-check-1">
                           <label for="event-check-1">Wedding</label>
 
                    </div>
                    </div>
                  </div>
                  <div class="col-lg-4">
                   <div class="pkg-ckeck-list">
                      <div class="category-checkboxes category-title">
                      <input type="checkbox" name="" value="3" id="event-check-2">
                           <label for="event-check-2">Reception</label>
 
                    </div>
                    </div>
                  </div>
                  <div class="col-lg-4">
                   <div class="pkg-ckeck-list">
                      <div class="category-checkboxes category-title">
                      <input type="checkbox" name="" value="3" id="event-check-3">
                           <label for="event-check-3">Reception</label>
 
                    </div>
                    </div>
                  </div>                            
                </div>
             </div>
           </div>
               </div>


             </div>
           </form>
         </div>
      </div>

      <!-- Modal footer -->
  

    </div>
  </div>
</div>
<!-- =============================== -->

