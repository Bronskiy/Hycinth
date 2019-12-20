<div class="modal fade cart-modal" id="cartModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
   <div class="modal-dialog" role="document">
      <div class="modal-content">
         <button type="button" class="close" data-dismiss="modal" aria-label="Close">
         <span aria-hidden="true">&times;</span>
         </button>
         <div class="modal-body">
            <div class="row">
               <div class="col-lg-6">
                  <figure class="about-event-img">
                     <img src="{{ asset('/frontend/images/event-form-img.png') }}">
                     <div class="form-img-cont">
                        <h2 class="modal-title modal-package-title">Package Title</h2>
                        <h2 class="modal-title-price modal-package-price">Package Price</h2>
                        <div class="modal-package-description">Description</div>
                     </div>
                  </figure>
               </div>
               <div class="col-lg-6">
                  <div class="first-user-form">
                     <div class="card-heading">
                        <h3>Choose Your Event.</h3>  
                        <div class="messageNotofications"></div>   
                    </div>
                        <form data-action="" id="AddToCart">
                     <div class="row">

                        <div class="messageNotofications"></div>
                           <input type="hidden" name="package_id" id="package_id" value="0">
                           <input type="hidden" name="deal_id" id="deal_id" value="0">
                        <div class="col-lg-12">
                           <div class="form-group">
                              <select class="form-control select2 eventType"
                                 name="event_type"
                                 data-placeholder="Event Type"
                                 id="cart-select"
                                 deal-id="{{!empty($deal) ? $deal->id : 0}}"
                                 data-action="{{url(route('cart.eventCategories'))}}">
                                 <option></option>
                              </select>
                              <span class="input-icon"><i class="fas fa-glass-cheers"></i></span>
                           </div>
                        </div>
                        <div class="col-lg-12">
                           <div class="form-group">
                              
                              <div class="row " id="eventAllCategories">

                              
                                   
                              </div>
                           </div>
                        </div>
                        <div class="col-lg-12">
                           <!-- <div class="btn-wrap text-center">
                              <a href="javascript:void(0);" class="cstm-btn solid-btn">Add to cart</a>
                              <a href="javascript:void(0);" class="cstm-btn solid-btn">Add to wishlist</a>
                              <a href="javascript:void(0);" class="cstm-btn solid-btn">Buy</a>
                           </div> -->


                           <button 
                           type="button" 
                           class="btn btn-addCartButton"
                           id="btn-addCartButton" 
                           data-action="{{url(route('cart.addToCart'))}}">
                           <i class="fas fa-cart-plus"></i> Add To Cart
                           </button>

                         <!--   <ul class="button-grp-wrap">
                                 <li>
                                    <a href="javascript:void(0);" data-toggle="tooltip" title="Add to Cart" class="icon-btn add-to-cart" data-original-title="More Detail"><i class="fas fa-cart-plus"></i>
                                    </a>
                                 </li>
                                 <li>
                                    <a href="javascript:void(0);" data-toggle="tooltip" title=" Add to wishlist" class="icon-btn" data-original-title="Get Deal"><i class="fas fa-heart"></i>
                                    </a>
                                 </li>
                                 <li>
                                    <a href="javascript:void(0);" class="icon-btn get_detail" data-title="Photos" data-message="Buy now" data-id="30" data-chat="0" data-chatmessage="" data-toggle="tooltip" title="Buy now" data-original-title="Chat"><i class="fas fa-money-check-alt"></i>
                                    </a>
                                 </li>
                              </ul>
 -->                        </div>
                        @csrf
                     </div>
                     </form>

                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>







