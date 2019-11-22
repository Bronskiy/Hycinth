$(document).ready(function(){
   // Basic Info Form
  $('#basicInfoForm').validate({
     ignore: [],
    onfocusout: function (valueToBeTested) {
      $(valueToBeTested).valid();
    },
  
    highlight: function(element) {
      $('element').removeClass("error");
    },

    errorPlacement: function(error, element) {
      if (element.attr("name") == "address") {
        error.insertAfter("#cke_address");
      } else {
         error.insertAfter(element);
      }
    },
  
    rules: {
      "business_name": { 
          required: true,
          alphanumeric: true,
          maxlength: 30,
      },
      "website": {
        required: true,
        isUrl: true
      },
      "phone_number": {
          required: true,
          digits:true,
          minlength: 8,
          maxlength: 14,
      },
      "company": {
          required: true,
          maxlength: 50,
      },
      "travel_distaince": {
          required: true,
          digits:true,
          maxlength: 50,
      },
      "min_price": {
          required: true,
          amount: true,
          maxlength: 50,
      },
      "short_description": {
          required: true
      },
      "address": {
          required: true,
      },
      valueToBeTested: {
          required: true,
      }
    },
    });   
  
    // Basic Info Submitting Form 
    $('#basicInfoBtn').click(function()
    {
      if($('#basicInfoForm').valid())
      {
        $('#basicInfoBtn').prop('disabled', true);
        $('#basicInfoForm').submit();
      } else {
        return false;
      }
    });
    
});
