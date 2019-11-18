$(document).ready(function(){
   // Add Department Form
	$('#categoryForm').validate({
    onfocusout: function (valueToBeTested) {
      $(valueToBeTested).valid();
    },
  
    highlight: function(element) {
      $('element').removeClass("error");
    },
  
    rules: {
      "label": { 
          required: true,
          maxlength: 50,
      },
      "meta_title": { 
          required: true,
          maxlength: 50,
      },
      "meta_tag": { 
          required: true,
          maxlength: 50,
      },
      "meta_description": { 
          required: true,
          maxlength: 500,
      },
      valueToBeTested: {
          required: true,
      }
    },
    });   
  
    // Add Department Submitting Form 
    $('#categoryFormSbt').click(function()
    {
      if($('#categoryForm').valid())
      {
        $('#categoryFormSbt').prop('disabled', true);
        $('#categoryForm').submit();
      } else {
        return false;
      }
    });
    
});
