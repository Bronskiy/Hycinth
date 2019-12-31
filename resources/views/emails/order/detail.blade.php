 <table align="center" cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;">
      <tbody>
        <tr>
          <td style="background-color: #fff; padding-top: 30px;  padding-bottom: 30px; padding-left: 30px; padding-right: 30px; border-top-left-radius: 20px; border-top-right-radius: 20px; border-bottom-left-radius: 20px; border-bottom-right-radius: 20px;">
            <table align="center" cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;">
              <tbody>
             
             @foreach($order->orderItems as $item)
               
                <tr>
                  <td style="font-family: 'Maven Pro', sans-serif; font-size: 16px; line-height: 22px; color: #726c6c; padding-top: 10px;">

                  	 <table>
                  	 	 <tr>
                  	 	 	<th> <img src="{{ asset($item->event->event_picture) }}" width="120"></th>
                  	 	 	<td>
                  	 	 		<p>Vendor: <strong>{{$item->vendor->title}}</strong> <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></p>
                  	 	 		       @if($item->discount > 0)
                                       <div>
                                             <p> ${{custom_format($item->discounted_price,2)}} 
		                                      @if($item->discounted_price < $item->package['package'] && $item->deal != null && $item->deal->count() > 0)   	${{custom_format($item->package->price,2)}}
		                                          <del>${{custom_format($item->package['package'],2)}} {{$item->addon_price > 0 ? '+ $'.$item->addon_price : ''}} </del>
		                                      @endif 
                                             </p>
                                        </div>
                                        @endif

                                        	@if($item->deal != null && $item->deal->count() > 0)
                            											<p>{!! dealInfoInCart($item) !!}
                                                                           <div class="demo-app hasToggle"> 
                              											       <i class=" blink-text fas fa-info-circle"></i> 
	                              											    <span class="toggle-info-dropdown">
	                              											    
	                              											    </span>
                              											   </div>
                              											</p>
                            											  
                            			   @endif
                              
                  	 	 	</td>
                  	 	 </tr>
                  	 </table>



                  </td>

                </tr>
               
               @endforeach
                
              </tbody>
            </table>
          </td>
        </tr>
      </tbody>
</table>








































