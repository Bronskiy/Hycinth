
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
</style>

 @foreach($businesses as $cate)    








<?php

$facebook_url = getBasicInfo($cate->vendors->id, $cate->category_id,'basic_information','facebook_url');
$linkedin_url = getBasicInfo($cate->vendors->id, $cate->category_id,'basic_information','linkedin_url');
$twitter_url =  getBasicInfo($cate->vendors->id, $cate->category_id,'basic_information','twitter_url');
$instagram_url = getBasicInfo($cate->vendors->id, $cate->category_id,'basic_information','instagram_url');
$pinterest_url = getBasicInfo($cate->vendors->id, $cate->category_id,'basic_information','pinterest_url');


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
                              <a href="{{url( route('vendor_detail_page',[$cate->category->slug,$cate->business_url]))}}"> <h4>{{getBasicInfo($cate->vendors->id, $cate->category_id,'basic_information','business_name')}}</h4></a>

                                            <span class="input-icon likes"><i class="fas fa-heart"></i></span>

                                   <p class="ser-text"> {{$cate->category->label}}</p>

                                           <!--  @if($cate->subcategory->count() > 0)
                                               <p class="business-services"><strong>Services : </strong>
                                                @foreach($cate->subcategory as $k => $service)
                                                 {{$service->category->label}} {{($k + 1) < $cate->subcategory->count() ? ',' : ''}}  
                                               @endforeach
                                             </p>
                                            @endif -->



                                            <ul class="rating">
                                                <li><span>${{custom_format(getBasicInfo($cate->vendors->id, $cate->category_id,'basic_information','min_price'),2)}} </span></li>
                                                <ul class="inner-list">
                                                    <li><a href="javascript:void(0);"><i class="fas fa-star"></i></a></li>
                                                    <li><a href="javascript:void(0);"><i class="fas fa-star"></i></a></li>
                                                    <li><a href="javascript:void(0);"><i class="fas fa-star"></i></a></li>
                                                    <li><a href="javascript:void(0);"><i class="fas fa-star"></i></a></li>
                                                    <li><a href="javascript:void(0);"><i class="far fa-star"></i></a>
                                                    </li>
                                                </ul>
                                                <li>
                                                    <p class="review">0 Reviews</p>
                                                </li>
                                               
                                            </ul>

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
                                            <ul class="social-links listing-social">
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

