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
                            scrollingTop();
                             getChatListOfUser('all');
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


 
  $(window).on('keypress keydown',function(event){
    if(event.keyCode == 13) {
      event.preventDefault();
       if(event.target.nodeName == 'TEXTAREA'){
           $("body").find('#sendMessage').submit();
       }
      return false;
    }
  });
 



 $('#textarea').keypress(function (e) {
 var key = e.keyCode;
  alert(key);
  if(key==13){ 
    $("body").find('#sendMessage').submit();
  } 
});



getDealAndDiscountChat();
getMessagesAccordingToID();
setInterval(function(){ 
    getChatListOfUser();
    getDealAndDiscountChat('onlyNewMessages');

 }, 5000);



function getDealAndDiscountChat(type="all") {
 
   var $this = jQuery("body").find('#ChatMessages');
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

                             scrollingTop();
                             getChatListOfUser('all');
                            
                           
                        }
               },
               complete: function() {
                        
               },
               error: function (jqXhr, textStatus, errorMessage) {
                     
               }

        });
 
}



function scrollingTop() {

  var sheight = jQuery("body").find('ul#ChatMessages').height();
  console.log(sheight);
  jQuery("body").find('.messages').animate({ scrollTop: sheight }, "slow");
 
}



 

///////////////////////////////////////////////////////////////////////////////



function getChatListOfUser(type="some") {
 
   var $this = jQuery('#contacts');
   var url = $this.attr('data-action');

   var activeList = jQuery("body").find('#listactive').val();
   
      $.ajax({
               url : url,
               type: 'GET',
               data:{
                 activeList:activeList,
                 type : type
               },   
               dataTYPE:'JSON',
               headers: {
                 'X-CSRF-TOKEN': $('input[name=_token]').val()
               },
               beforeSend: function() {
                   
               },
               success: function (result) {
                      if(parseInt(result.status) == 1){
                         $this.html(result.list);
                         //scrollingTop();

                      }
               },
               complete: function() {
                        
               },
               error: function (jqXhr, textStatus, errorMessage) {
                     
               }

        });
 
}



///////////////////////////////////////////////////////////////////////////



jQuery("body").on('click','a.getChatbox',function(e){
      e.preventDefault();
      var $this = jQuery( this );
      $('li.contact').removeClass('active');
      $this.closest('li.contact').addClass('active');
      getMessagesAccordingToID();
});




function getMessagesAccordingToID() {
   
      var $this = jQuery("body").find('#contacts').find('li.active').find('a.getChatbox');
      jQuery("body").find('#listactive').val($this.attr('data-id'));

     

      var url = $this.attr('data-href');
      $.ajax({
               url : url,
                
               type: 'GET',   
               dataTYPE:'JSON',
               headers: {
                 'X-CSRF-TOKEN': $('input[name=_token]').val()
               },
                beforeSend: function() {
                     
                },
                success: function (result) {
                        if(parseInt(result.status) == 1){
                           $("body").find('#userChatBox').html(result.data);
                           getChatListOfUser('all');
                           scrollingTop();
                        }
               },
               complete: function() {
                        
               },
               error: function (jqXhr, textStatus, errorMessage) {
                     
               }

        });  
}





});