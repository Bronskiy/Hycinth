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