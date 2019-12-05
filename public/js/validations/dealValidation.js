
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
          maxlength: 150
      },
      "packages":{
        required: true
      },
      "type_of_deal":{
        required: true
      },
      "deal_code": {
        required: true,
        maxlength: 10
      },
      "amount": {
        required: true,
        amount: true,
        maxlength: 10
      },
      "deal_life": {
        required: true
      },
      "start_date": {
        required: true,
        minDate: true
      },
      "expiry_date": {
        required: true,
        minStartDate: true
      },
      "deal_off_type": {
        required: true
      },
       "description": {
          required: true,
          maxlength: 500
      },
      'message_text': {
          required: true,
          maxlength: 300
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
