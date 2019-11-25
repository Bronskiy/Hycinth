 @foreach($categories as $cate)    

       
                            <div class="detail-in-breif">
                                <div class="row">
                                    <div class="col-lg-5">
                                        
                                        <div class="custom-left-content">

                                           @if($cate->category->cover_type == 1)

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
                                            <hr>
                                            <p class="detail">
                                                <?php $description = getBasicInfo($cate->vendors->id, $cate->category_id,'basic_information','short_description'); ?>
                                               {{substr($description,0,160)}} {{strlen($description) > 160 ? '...' : ''}}
                                            </p>
                                            <a href="javascript:void(0);" class="cstm-btn solid-btn detail-btn">Request For Pricing </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <hr class="hr-break">
                       @endforeach 






                    <div class="pagination-container">
                         
                    </div>

