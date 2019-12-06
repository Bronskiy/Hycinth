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

  $chats = $deal->Business->getChatOfLoggedUser != null && $deal->Business->getChatOfLoggedUser->count() > 0 ? 1 : 0;
  $links = '';
  if($deal->Business->getChatOfLoggedUser != null && $deal->Business->getChatOfLoggedUser->count() > 0){
     $link = url(route('deal_discount_chatMessages',$deal->Business->getChatOfLoggedUser->id));
     $links = 'Your message has been sent to vendor, soon that will reply you. <a href="'.$link.'">view chat</a>';
  }



?>



  <div class="deals-card">
    <figure class="deal-img">
      <img src="{{url($deal->image)}}">
      <figcaption class="discount-per"><span class="blink-text">
        @if($deal->deal_off_type == 0)
         {{$deal->amount}}% 
        @else
         ${{$deal->amount}} 
        @endif
        <small> OFF</small></span> </figcaption>      
    </figure>
     <div class="detal-card-details">
      <div class="dealls-dis-head">
        <a href="{{url( route('vendor_detail_page',[$deal->Business->category->slug,$deal->Business->business_url]))}}#deals-sec"> <h4>{{$deal->title}}</h4></a>

<p class="ser-text"> <span><i class="fas fa-calendar-alt"></i></span>
        @if($deal->deal_life == 0)
          Permanent Deal
        @else
                <span class="deal-starting-date">Stating:<strong> {{date('d-m-Y',strtotime($deal->start_date))}}</strong></span> <span class="deal-starting-date">Ending:<strong> {{date('d-m-Y',strtotime($deal->expiry_date))}}</strong></span>
        @endif
        </p>

        <p class="ser-text mt-1">
         <span><i class="fas fa-tag"></i></span> {{ $deal->Business->category->label }}
        </p>

        @if($deal->type_of_deal == '0')
        <a href="javascript:void(0);" class="coupon-code" data-toggle="tooltip" title="Copy to clipboard">
          <span class="code-text">{{ $deal->deal_code }}</span>
          <span class="get-code">Get Code</span>
        </a>
       @endif
      </div>
      <p class="deal-discription">
             <?php $description =  $deal->description; ?>
                                               {{substr($description,0,100)}} {{strlen($description) > 100 ? '...' : ''}}
        </p>
        <ul class="button-grp-wrap">
          <li><a href="{{url( route('vendor_detail_page',[$deal->Business->category->slug,$deal->Business->business_url]))}}#deals-sec" data-toggle="tooltip" title="More Detail" class="icon-btn"><i class="fa fa-eye"></i></a></li>
          <li><a href="{{url( route('vendor_detail_page',[$deal->Business->category->slug,$deal->Business->business_url]))}}#deals-sec" data-toggle="tooltip" title="Get Deal" class="icon-btn"><i class="fas fa-tags"></i></a></li>
          <li><a href="javascript:void(0);" class="icon-btn" data-title="{{$deal->Business->title}}"
                                             data-message="{{$deal->message_text}}"
                                             data-id="{{$deal->id}}"
                                             data-chat="{{$chats}}"
                                             data-chatMessage="{{$links}}" data-toggle="tooltip" title="Chat"><i class="fa fa-comment-dots"></i></a></li>
        </ul>
     </div>

  </div>

<!-- 
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

                                             <a href="{{url( route('vendor_detail_page',[$deal->Business->category->slug,$deal->Business->business_url]))}}#deals-sec" class="cstm-btn solid-btn detail-btn"><i class="fa fa-eye"></i> Get Deal</a>

                                            <a href="javascript:void(0);"
                                             class="cstm-btn solid-btn detail-btn get_detail"
                                             data-title="{{$deal->Business->title}}"
                                             data-message="{{$deal->message_text}}"
                                             data-id="{{$deal->id}}"
                                             data-chat="{{$chats}}"
                                             data-chatMessage="{{$links}}"
                                             ><i class="fa fa-comment-dots"></i> Chat</a>

                                             
                                        </div>
                                    </div>
                                </div>
                            </div>
                             -->
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

<script>
$(document).ready(function(){
  $('[data-toggle="tooltip"]').tooltip();
});

$('.coupon-code').click(function() {
  /* Get the text field */
  var text = $(this).parent().find('.code-text').text();
  var copyText = document.createElement("textarea");
  document.body.appendChild(copyText);
  copyText.value = text;
  /* Select the text field */
  copyText.select(); 
  copyText.setSelectionRange(0, 99999); /*For mobile devices*/
  /* Copy the text inside the text field */
  document.execCommand("copy");
  document.body.removeChild(copyText);
  $(this).attr('data-original-title', `Copied ${copyText.value}`);
});

$('.coupon-code').mouseover(function() {
 $(this).attr('data-original-title', `Copy to clipboard`);
});

</script>






