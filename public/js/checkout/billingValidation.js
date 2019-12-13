
$(document).ready(function(){
   // billing Form
  $('#billingForm').validate({
    onfocusout: function (valueToBeTested) {
      $(valueToBeTested).valid();
    },
  
    highlight: function(element) {
      $('element').removeClass("error");
    },
  
    rules: {
      "name": {
          required: true,
          alphanumeric: true
      },
      "email": {
          required: true,
          email: true
      },
      "phone_number": {
          required: true,
          phoneUS: true
      },
      "address": {
          required: true,
      },
      "country": {
          required: true,
      },
      "state": {
          required: true,
      },
      "city": {
          required: true,
      },
      "zipcode": {
          required: true,
      },
      valueToBeTested: {
          required: true,
      }
    },
    });   
  
    // billing Form Submitting 
    $('#billingFormBtn').click(function() {
      if($('#billingForm').valid()) {
        $('#billingFormBtn').prop('disabled', true);
        $('#billingForm').submit();
      } else {
        return false;
      }
    });
    
});
