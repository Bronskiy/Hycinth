$(document).ready(function(){
   // SignupPage Form
	$('#signupForm').validate({
    onfocusout: function (valueToBeTested) {
      $(valueToBeTested).valid();
    },
  
    highlight: function(element) {
      $('element').removeClass("error");
    },
  
    rules: {
      "signup_title": { 
          required: true,
          alphanumeric: true,
          maxlength: 30,
      },
      "heading": { 
          required: true,
          alphanumeric: true,
          maxlength: 30,
      },
      "description": { 
          required: true,
          maxlength: 500,
      },
      valueToBeTested: {
          required: true,
      }
    },
    });   
  
    // SignupPage Submitting Form 
    $('#signupFormBtn').click(function()
    {
      if($('#signupForm').valid())
      {
        $('#signupFormBtn').prop('disabled', true);
        $('#signupForm').submit();
      } else {
        window.scrollTo({top: 0, behavior: 'smooth'});
        return false;
      }
    });
    
});
