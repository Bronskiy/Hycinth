jQuery(function(){




/*----------------------------------------------------------------------------
|
|   Business filter
|_____________________________________________________________________________
*/

jQuery("body").on('submit','#sendMessage',function(e){
   e.preventDefault();
   var $this = jQuery( this );
   var url = $this.attr('action');
   //if($this.valid()){
      $.ajax({
               url : url,
               data : $this.serialize(),
               type: 'POST',   
               dataTYPE:'JSON',
               headers: {
                 'X-CSRF-TOKEN': $('input[name=_token]').val()
               },
                beforeSend: function() {
                    $("body").find('.custom-loading').show();
                     $this.find('.messageNotofications').html('');
                     $this.find('button.cstm-btn').attr('disabled','true');
                     $this[0].reset();

                },
                success: function (result) {
                        if(parseInt(result.status) == 1){
                            $("body").find('#ChatMessages').append(result.message);
                            $this.find('button.cstm-btn').removeAttr('disabled');
                       }
               },
               complete: function() {
                        $("body").find('.custom-loading').hide();
               },
               error: function (jqXhr, textStatus, errorMessage) {
                     
               }

        });
   //}

});





getDealAndDiscountChat();

setInterval(function(){ 
getDealAndDiscountChat('onlyNewMessages');
 }, 5000);



function getDealAndDiscountChat(type="all") {
 
   var $this = jQuery('#ChatMessages');
   var url = $this.attr('data-action');
   
      $.ajax({
               url : url,
               data : {
                 type : type
               },
               type: 'GET',   
               dataTYPE:'JSON',
               headers: {
                 'X-CSRF-TOKEN': $('input[name=_token]').val()
               },
                beforeSend: function() {
                     
                },
                success: function (result) {
                        if(parseInt(result.status) == 1){
                            $("body").find('#ChatMessages').html(result.messages);
                           
                        }
               },
               complete: function() {
                        
               },
               error: function (jqXhr, textStatus, errorMessage) {
                     
               }

        });
 
}







});