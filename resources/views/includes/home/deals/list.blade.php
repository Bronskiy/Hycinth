<style type="text/css">
 .MessageChat{
  display: none;
  padding: 70px 0;
  text-align: center;
 } 
 .MessageChat a{
  color: #d9534f;
  text-decoration: underline;
 }
  .modal-body.aleadyRequested form{
    display: none;
  }
   .modal-body.aleadyRequested .MessageChat{
    display: block;
  }


</style>


@foreach($discount_deals as $deal)
 
 
<?php

  $chats = $deal->chats != null && $deal->chats->count() > 0 ? 1 : 0;
  $links = '';
  if($deal->chats != null && $deal->chats->count() > 0){
     $link = url(route('deal_discount_chatMessages',$deal->chats->id));
     $links = 'Your message has been sent to vendor, soon that will reply you. <a href="'.$link.'">view chat</a>';
  }



?>




  <div class="detail-in-breif">
                                <div class="row">
                                    <div class="col-lg-5">
                                         <div class="custom-left-content">
                                             <img src="{{url($deal->image)}}">
                                        </div>
                                    </div>
                                    <div class="col-lg-7">
                                        <div class="right-content">
                                           <div class="listing-head">
                                             <a href="{{url( route('vendor_detail_page',[$deal->Business->category->slug,$deal->Business->business_url]))}}#deals-sec"> <h4>{{$deal->title}}</h4></a>
                                             <p class="ser-text"><i class="fa fa-clock"></i> {{$deal->deal_life == 1 ? 'Expires on '.$deal->expiry_date : 'Permanent promotion'}}
                                             </p>
                                           </div>
                                           <hr>
                                            <p class="detail">
                                                <?php $description =  $deal->description; ?>
                                               {{substr($description,0,100)}} {{strlen($description) > 100 ? '...' : ''}}
                                            </p>
                                            

                                            <a href="{{url( route('vendor_detail_page',[$deal->Business->category->slug,$deal->Business->business_url]))}}#deals-sec" class="cstm-btn solid-btn detail-btn"><i class="fa fa-eye"></i> More detail</a>

                                            <a href="javascript:void(0);"
                                             class="cstm-btn solid-btn detail-btn get_detail"
                                             data-title="{{$deal->Business->title}}"
                                             data-message="{{$deal->message_text}}"
                                             data-id="{{$deal->id}}"
                                             data-chat="{{$chats}}"
                                             data-chatMessage="{{$links}}"
                                             >Get Deal </a>

                                             
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <hr class="hr-break">
 


 
@endforeach






<!-- Modal -->
<div class="modal fade" id="myModalDealDiscount" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Get Deal Coupon Code from <span id="busines_title"></span></h4>
      </div>
      <div class="modal-body">
         <form id="getDealForm" action="{{url(route('get-deal-request'))}}">
            <div class="messageNotofications"></div>
            <input type="hidden" name="deal_id" value="">

            <div class="row">
                 <div class="col-md-6">
                      {{textbox($errors,'Name','name',$name)}}
                 </div>

                 <div class="col-md-6">
                      {{textbox($errors,'Email','email',$email)}}
                 </div>

                  <div class="col-md-6">
                      {{textbox($errors,'Phone Number','phone_number',$phone)}}
                 </div>
                 <div class="col-md-6">
                      {{datebox($errors,'Event Date','event_date',$event_date)}}
                 </div>
                  <div class="col-md-12">
                      {{textarea($errors,'Message','message')}}
                 </div>
                 <div class="col-md-12">
                    <button type="submit" class="cstm-btn solid-btn detail-btn pull-right">Submit</button>

                    
                </div>
            </div>
      </form>
      <div class="MessageChat"></div>
          </div>
           
    </div>
  </div>
</div>






