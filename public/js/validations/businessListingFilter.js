jQuery(function(){












getAllBusinessAccordingToFilter();



/*----------------------------------------------------------------------------
|
|   Business filter
|_____________________________________________________________________________
*/



jQuery("body").on('change','.businesses',function(){

  getAllBusinessAccordingToFilter();

});

jQuery("body").on('change','.Capacity',function(){

  getAllBusinessAccordingToFilter();

});
 


function getAllBusinessAccordingToFilter() {
     var $this = jQuery("body").find('#BusinessListingFilter');
     var url = $this.attr('action');
      $.ajax({
               url : url,
               data : $this.serialize(),
               type: 'GET',   
               dataTYPE:'JSON',
               headers: {
                 'X-CSRF-TOKEN': $('input[name=_token]').val()
               },
                beforeSend: function() {
                    $("body").find('.custom-loading').show();
                },
                success: function (result) {
                      if(parseInt(result.status) == 1){
                          jQuery("body").find('#inner-content-detail').html(result.businesses);
                          jQuery("body").find('#categoryCount').html(result.businessCount);
                       }
               },
               complete: function() {
                        $("body").find('.custom-loading').hide();
               },
               error: function (jqXhr, textStatus, errorMessage) {
                     
               }

        });
}









var valueBubble = '<output class="rangeslider__value-bubble" />';

function updateValueBubble(pos, value, context,divID) {
  pos = pos || context.position;
  value = value || context.value;
  var $valueBubble = $('.rangeslider__value-bubble', context.$range);
   $(divID).val(value);
  var tempPosition = pos + context.grabPos;
  var position = (tempPosition <= context.handleDimension) ? context.handleDimension : (tempPosition >= context.maxHandlePos) ? context.maxHandlePos : tempPosition;

  if ($valueBubble.length) {
    $valueBubble[0].style.left = Math.ceil(position) + 'px';
    $valueBubble[0].innerHTML = value;
    
  }
}

$('#sitting_capacity').rangeslider({
  polyfill: false,
  onInit: function() {
    
    this.$range.append($(valueBubble));
    updateValueBubble(null, null, this,'#sitting_capacitys');
  },
  onSlide: function(pos, value) {
     
    updateValueBubble(pos, value, this,'#sitting_capacitys');
  }
});

$('#standing_capacity').rangeslider({
  polyfill: false,
  onInit: function() {
    
    this.$range.append($(valueBubble));
    updateValueBubble(null, null, this,'#standing_capacitys');
  },
  onSlide: function(pos, value) {
     
    updateValueBubble(pos, value, this,'#standing_capacitys');
  }
});



















 

//--------------------------------------------------------------------------------
//--------------------------------------------------------------------------------


jQuery("body").on('click','.custom-video-container .play-btn',function(e){

  e.preventDefault();
  stopOtherVideo();
  var videoPath = jQuery( this ).attr('data-video');
  var Targets = jQuery( this ).attr('data-target');
  var videoTag = videoPlaySrc(videoPath);
   

   jQuery("body").find('#'+Targets).html(videoTag);
   jQuery( this ).closest('.custom-video-container').addClass('playing');
  
});



function videoPlaySrc(videoPath) {
           var text ='';
           text ='<video width="100%"  controls autoplay>';
           text +='<source src="'+videoPath+'" type="video/mp4">';
           text +='<source src="movie.ogg" type="video/ogg">';
           text +='Your browser does not support the video tag.';
           text +='</video>';
           
           return text;
}



function stopOtherVideo() {
    jQuery('.custom-video-container').removeClass('playing');

      $( ".custom-video-container" ).each(function( index ) {
          $( this ).removeClass('playing').find('.video-screen').html('');
      });
}

});