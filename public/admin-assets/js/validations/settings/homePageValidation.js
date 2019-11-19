$(document).ready(function(){
   // HomePage Form
	$('#homePageForm').validate({
    onfocusout: function (valueToBeTested) {
      $(valueToBeTested).valid();
    },
  
    highlight: function(element) {
      $('element').removeClass("error");
    },
  
    rules: {
      "slider_title": { 
          required: true,
          alphanumeric: true,
          maxlength: 30,
      },
      "slider_tagline": { 
          required: true,
          alphanumeric: true,
          maxlength: 30,
      },
      "slider_button_title": {
          required: true,
          alphanumeric: true,
          maxlength: 30,
      },
      "slider_button_url": { 
          required: true,
          isUrl: true,          
          maxlength: 30,
      },
      "section1_title": {
          required: true,
          alphanumeric: true,
          maxlength: 30,
      },
      "section1_tagline": {
          required: true,
          alphanumeric: true,
          maxlength: 100,
      },
      "section2_title":{
          required: true,
          alphanumeric: true,
          maxlength: 30,
      },
      "section2_tagline":{
          required: true,
          alphanumeric: true,
          maxlength: 30,
      },
      "section2_image_tagline": {
          required: true,
          alphanumeric: true,
          maxlength: 30,
      },
      "section3_title": {
          required: true,
          alphanumeric: true,
          maxlength: 30,
      },
      "section3_tagline": {
          required: true,
          alphanumeric: true,
          maxlength: 30,
      },      
      "section4_title1": {
          required: true,
          alphanumeric: true,
          maxlength: 30,
      },
      "section4_tagline1": {
          required: true,
          alphanumeric: true,
          maxlength: 30,
      },
      "section4_description": {
          required: true,
          maxlength: 500,
      },
      "section4_title2": {
          required: true,
          alphanumeric: true,
          maxlength: 30,
      },
      "section4_tagline2": {
          required: true,
          alphanumeric: true,
          maxlength: 30,
      }, 
      "section4_button_title": {
          required: true,
          alphanumeric: true,
          maxlength: 30,
      },      
      "section4_button_url": {
          required: true,
          isUrl: true,          
          maxlength: 30,
      },
      "section5_title": {
          required: true,
          alphanumeric: true,          
          maxlength: 30,
      },
      valueToBeTested: {
          required: true,
      }
    },
    });   
  
    // HomePage Submitting Form 
    $('#homePageFormBtn').click(function()
    {
      if($('#homePageForm').valid())
      {
        $('#homePageFormBtn').prop('disabled', true);
        $('#homePageForm').submit();
      } else {
        window.scrollTo({top: 0, behavior: 'smooth'});
        return false;
      }
    });
    
});
