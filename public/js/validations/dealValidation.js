
$(document).ready(function(){
   // deal Form
  $('#dealForm').validate({
    onfocusout: function (valueToBeTested) {
      $(valueToBeTested).valid();
    },
  
    highlight: function(element) {
      $('element').removeClass("error");
    },
  
    rules: {
      "title": {
          required: true,
          alphanumeric: true
      },
       "description": {
          required: true,
          alphanumeric: true,
          maxlength: 500
      },
      'message_text': {
          required: true,
          maxlength: 500           
      },
      valueToBeTested: {
          required: true,
      }
    },
    });   
  
    // deal Form Submitting 
    $('#dealFormBtn').click(function() {
      if($('#dealForm').valid()) {
        $('#dealFormBtn').prop('disabled', true);
        $('#dealForm').submit();
      } else {
        return false;
      }
    });
    
});
