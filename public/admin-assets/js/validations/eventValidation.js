$(document).ready(function(){
   // Add Department Form
	$('#eventForm').validate({
    onfocusout: function (valueToBeTested) {
      $(valueToBeTested).valid();
    },
  
    highlight: function(element) {
      $('element').removeClass("error");
    },
  
    rules: {
      "name": { 
          required: true,
          alphanumeric: true,
          maxlength: 20,
      },
      "description": { 
          required: true,
          maxlength: 50,
      },
      valueToBeTested: {
          required: true,
      }
    },
    });   
  
    // Add Department Submitting Form 
    $('#eventFormSbt').click(function()
    {
      if($('#eventForm').valid())
      {
        $('#eventFormSbt').prop('disabled', true);
        $('#eventForm').submit();
      } else {
        return false;
      }
    });
    
});
