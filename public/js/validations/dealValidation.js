
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
          alphanumeric: true,
          maxlength: 30
      },
       "description": {
          required: true,
          alphanumeric: true,
          maxlength: 200
      },
      'message_text': {
          required: true,
          maxlength: 100           
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
