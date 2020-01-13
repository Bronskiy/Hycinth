 


 @foreach($chats->ChatMessages as $msg)

              @if($msg->sender_id == Auth::user()->id)

                  <!-- <li class="replies"> 
                    <img src="{{ProfileImage($msg->sender->profile_image)}}" alt="" />
                    <p>{!! $msg->message !!}</p>
                  </li> -->
                  {!! messageAccordingType($msg,'replies') !!}
               
               @elseif($msg->receiver_id == Auth::user()->id)

                <?php $msg->receiver_status = 1; $msg->save(); ?>

                    <!--      <li class="sent">
                          <img src="{{ProfileImage($msg->business->profileImage->keyValue)}}" alt="" />
                          <p>{!! $msg->message !!}</p>
                        </li> -->
                          {!! messageAccordingType($msg,'sent') !!}


              @else
                    
                   <!-- <li class="sent">
                      <img src="{{ProfileImage($msg->business->profileImage->keyValue)}}" alt="" />
                      <p>{!! $msg->message !!}</p>
                   </li> -->
                   {!! messageAccordingType($msg,'sent') !!}

              @endif

@endforeach