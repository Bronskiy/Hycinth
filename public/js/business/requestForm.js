$(function(){

   // deal Form
  $('#sendMessageFormToVendor').validate({
	    onfocusout: function (valueToBeTested) {
	      $(valueToBeTested).valid();
	    },
	  
	    highlight: function(element) {
	      $('element').removeClass("error");
	    },
       rules: {
		      "name": {
		          required: true,
		          maxlength: 150
		      },
		      "email":{
		        required: true
		      },
		      "start_date": {
		        required: function(element){
		         
		                    if($("body").find('input[name=request_for]').val() == 1){
		                        return true;
		                    }
		                    else{
		                        return true;
		                    }
		                },
		        minDate: true
		      },
		      "no_of_guest": {
		        required:function(element){
		         
		                    if($("body").find('input[name=request_for]').val() == 1){
		                        return true;
		                    }
		                    else{
		                        return true;
		                    }
		                },
		         number:true
		      },
		      "contact_type": {
		        required: true
		       },
		       'message_text': {
		           required: true,
		           maxlength: 300
		      },
		      valueToBeTested: {
		          required: true,
              }
         } 
       
   
    
});



function showHideFieldAccordingToRequestType($this) {
	 
	 var val = parseInt($this.val());

	 if(val == 1){
	 	$("body").find('#request_for').show();
	 }else{
	 	$("body").find('#request_for').hide();
	 }
}








$("body").on('click change','.requestFor',function(){
    showHideFieldAccordingToRequestType($(this));
});







$("body").on('submit','#sendMessageFormToVendor',function(e){
    e.preventDefault();
    var val = $("body").find('input[name=request_for]').val();
    if(val == 1){
    	submitMessageRequestForm();
    }else{

    }
});







function submitMessageRequestForm() {
	 var $this = $("body").find('#sendMessageFormToVendor');
     $.ajax({
               url : $this.attr('action'),
               data : $this.serialize(),
               type: 'POST',   
               dataTYPE:'JSON',
               headers: {
                 'X-CSRF-TOKEN': $('input[name=_token]').val()
               },
                beforeSend: function() {
                    $this.find('button.cstm-btn').attr('disabled','true');
                 },
                success: function (result) {
                   if(result.status == 1){
                		    $this.find('button.cstm-btn').removeAttr('disabled');
                            $this[0].reset();
                            $this.next('.cart-error-msz').html(ErrorMsg('success',result.messages));

                         
                       
                    }else{
                        $this.find('.messageNotofications').html(ErrorMsg('warning',result.messages));
                        $this.find('button.cstm-btn').removeAttr('disabled');
                    }
                 },
                complete: function() {
                        $("body").find('.custom-loading').hide();
                },
                error: function (jqXhr, textStatus, errorMessage) {
                     
                }

      });
}















});

































