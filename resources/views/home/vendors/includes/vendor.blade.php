
@if($categoryCount == 0)

@include('includes.not_found')
@endif

<style type="text/css">
  ul.capacity li p {
    padding-top: 10px;
    font-size: 14px;
    color: #88718c;
    font-weight: bold;
}

ul.capacity li p b {
    display: inline-block;
    background: #eda208;
    padding: 4px;
    border-radius: 5px;
    color: #fff;
    margin-left: 5px;
    margin-right: 10px;
}

ul.capacity li p i {
    font-size: 18px;
    color: #333;
    display: inline-block;
    margin-right: 10px;
}

.detail-in-breif a.detail-btn {
    padding: 8px 15px !important;
}

.right-content p.detail {
    
    min-height: 55px;
}
.mapCanvas{
  height: 559px;
}
.info_content{
      max-width: 220px;
}
.info_content h3 {
    font-size: 17px;
    font-weight: 500;
    margin: 5px 0px;
}
.info_content p{
  font-size: 15px;
}
.info_content label {
    font-size: 16px;
    color: #000;
}
</style>
<div class="business-view" id="business-view">
 @foreach($businesses as $cate)    

 
<?php

$facebook_url = getBasicInfo($cate->vendors->id, $cate->category_id,'basic_information','facebook_url');
$linkedin_url = getBasicInfo($cate->vendors->id, $cate->category_id,'basic_information','linkedin_url');
$twitter_url =  getBasicInfo($cate->vendors->id, $cate->category_id,'basic_information','twitter_url');
$instagram_url = getBasicInfo($cate->vendors->id, $cate->category_id,'basic_information','instagram_url');
$pinterest_url = getBasicInfo($cate->vendors->id, $cate->category_id,'basic_information','pinterest_url');

$followus = empty($facebook_url) && empty($linkedin_url) && empty($twitter_url) && empty($instagram_url) && empty($pinterest_url) ? 'hide' : '';
?>
       
                            <div class="detail-in-breif">
                                <div class="row">
                                    <div class="col-lg-5">
                                        
                                        <div class="custom-left-content">

                                           @if($cate->category && $cate->category->cover_type == 1)

                                            <img src="{{url(getBasicInfo($cate->vendors->id, $cate->category_id,'basic_information','cover_photo'))}}">

                                           
                                           @else

                                                <div class="video-container custom-video-container">
                                                     <a href="javascript:void(0);" class="play-btn" 
                                                         data-toggle="modal"
                                                         data-video="{{url(getBasicInfo($cate->vendors->id, $cate->category_id,'basic_information','cover_video'))}}"
                                                         data-target="Video-Modal-relation-{{$cate->id}}">
                                                           <span><i class="far fa-play-circle"></i></span>
                                                        </a>

                                                       <img src="{{url(getBasicInfo($cate->vendors->id, $cate->category_id,'basic_information','cover_video_image'))}}" draggable="false" class="Video-Modal-relation-{{$cate->id}}">

                                                      <div class="video-screen" id="Video-Modal-relation-{{$cate->id}}">
                                                                
                                                      </div>
                                              </div>


                                           @endif

 
                                      </div>
                                         
                                    
                                    </div>
                                    <div class="col-lg-7">
                                        <div class="right-content">
                                          <div class="listing-head">
                                    <a href="{{url( route('vendor_detail_page',[$cate->category->slug,$cate->business_url]))}}"> <h4>{{getBasicInfo($cate->vendors->id, $cate->category_id,'basic_information','business_name')}}</h4></a>
                                           
                                           <ul class="listing-action-btns">
                                             <li class="mb-1"><a href="javascript:void(0);" class="list-icon-btn"><i class="fas fa-heart"></i></a></li>
                                             <li><a href="tel:{{getBasicInfo($cate->vendors->id, $cate->category_id,'basic_information','phone_number')}}" class="list-icon-btn"><i class="fas fa-phone-alt"></i></a></li>
                                           </ul>




                                             
                       
                                            <!-- <span class="input-icon likes"><i class="fas fa-heart"></i></span> -->

                                   <p class="ser-text"> {{$cate->category->label}}</p>
 

                                            <ul class="rating">
                                                <li>
                                                  <div class="price-review-detail"><p>Starting From:</p> <span> ${{custom_format(getBasicInfo($cate->vendors->id, $cate->category_id,'basic_information','min_price'),2)}} &nbsp;<i class="fa fa-users"></i> </span>
                                                  </div>
                                                </li>
                                                <li>
                                                <ul class="inner-list">
                                                    <li><a href="javascript:void(0);"><i class="fas fa-star"></i></a></li>
                                                    <li><a href="javascript:void(0);"><i class="fas fa-star"></i></a></li>
                                                    <li><a href="javascript:void(0);"><i class="fas fa-star"></i></a></li>
                                                    <li><a href="javascript:void(0);"><i class="fas fa-star"></i></a></li>
                                                    <li><a href="javascript:void(0);"><i class="far fa-star"></i></a>
                                                    </li>
                                                </ul>
                                              </li>
                                                <li>
                                                    <p class="review">0 Reviews</p>
                                                </li>
                                               
                                            </ul>
                                          </div>

                                            <ul class="capacity">
                                               @if($cate->category->capacity == 1)
                                                 <li>
                                                    <p class=""><i class="fa fa-users"></i> <?= $cate->sitting_capacity > 0 ? 'Sitting Capacity <b>'.$cate->sitting_capacity.'</b> ' : ''?> <?= $cate->standing_capacity > 0 ? 'Standing Capacity<b>'.$cate->standing_capacity.'</b>' : ''?></p>
                                                 </li>
                                                @endif
                                            </ul>
                                            <hr>

                                            <p class="detail">
                                                <?php $description = getBasicInfo($cate->vendors->id, $cate->category_id,'basic_information','short_description'); ?>
                                               {{substr($description,0,100)}} {{strlen($description) > 100 ? '...' : ''}}
                                            </p>
                                            <ul class="social-links listing-social {{$followus}}">
                                              <li><p>Follow us:</p></li>

                                              <li class="{{empty($facebook_url) ? 'hide' : ''}}">
                                                <a href="<?= $facebook_url ?>" target="_blank"><i class="fab fa-facebook-f"></i></a>
                                              </li>
                                              <li class="{{empty($linkedin_url)? 'hide' : ''}}">
                                                <a href="<?= $linkedin_url ?>" target="_blank"><i class="fab fa-linkedin-in"></i></a>
                                              </li>
                                              <li class="{{empty($twitter_url) ? 'hide' : ''}}">
                                                <a href="<?= $twitter_url ?>" target="_blank"><i class="fab fa-twitter"></i></a>
                                              </li>
                                              <li class="{{empty($instagram_url) ? 'hide' : ''}}">
                                                <a href="<?= $instagram_url ?>" target="_blank"><i class="fab fa-instagram"></i></a>
                                              </li>
                                              <li class="{{empty($pinterest_url) ? 'hide' : ''}}">
                                                <a href="<?= $pinterest_url ?>" target="_blank"><i class="fab fa-pinterest"></i></a>
                                              </li>
                                            </ul>

                                            <a href="javascript:void(0);" class="cstm-btn solid-btn detail-btn"><i class="fa fa-comment-dots"></i> Chat</a>
                                            <a href="javascript:void(0);" class="cstm-btn solid-btn detail-btn">Request A Qoute </a>

                                             
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <hr class="hr-break">
                       @endforeach 






                    <div class="pagination-container">
                         
                    </div>
</div>



<!-- <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDULjv0UAVmj_zgc9GjBhJNh9fNuEj87LQ&libraries=places"></script>
 -->
<script type="text/javascript">
 


jQuery("body").on('click','.view-mapper',function(e){
    e.preventDefault();
    var val = jQuery( this ).attr('data-id');
    var valHide = jQuery( this ).attr('data-hide');
     jQuery(val).slideDown('slow');
     jQuery(valHide).slideUp('slow');
});










</script>