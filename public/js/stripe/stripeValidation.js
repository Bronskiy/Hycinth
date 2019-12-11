$(document).ready(function(){
   // Basic Info Form
  $('#stripeForm').validate({
     ignore: [],
    onfocusout: function (valueToBeTested) {
      $(valueToBeTested).valid();
    },
  
    highlight: function(element) {
      $('element').removeClass("error");
    },
  
    rules: {
      "stripe_account": { 
          required: true,
      },
      "category": {
        required: true,
      },
      valueToBeTested: {
          required: true,
      }
    },
    });   
  
    // stripeForm Submitting Form 
    $('#stripeFormBtn').click(function()
    {
      if($('#stripeForm').valid())
      {
        $('#stripeFormBtn').prop('disabled', true);
        $('#stripeForm').submit();
      } else {
        return false;
      }
    });
    
});
