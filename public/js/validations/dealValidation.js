
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
      },
       "description": {
          required: true,
      },
      'message_text': {
          required: true,
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
