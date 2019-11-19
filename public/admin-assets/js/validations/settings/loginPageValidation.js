$(document).ready(function(){
   // LoginPage Form
	$('#loginForm').validate({
    onfocusout: function (valueToBeTested) {
      $(valueToBeTested).valid();
    },
  
    highlight: function(element) {
      $('element').removeClass("error");
    },
  
    rules: {
      "login_title": { 
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
  
    // LoginPage Submitting Form 
    $('#loginFormBtn').click(function()
    {
      if($('#loginForm').valid())
      {
        $('#loginFormBtn').prop('disabled', true);
        $('#loginForm').submit();
      } else {
        window.scrollTo({top: 0, behavior: 'smooth'});
        return false;
      }
    });
    
});
