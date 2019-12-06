$(document).ready(function() {

     // UserEventForm
  $('#UserEventForm').validate({
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
      "description": {
        required: true,
        maxlength: 300
      },
      "start_date": {
        required: true,
        minDate: true
      },
      "end_date": {
        required: true,
        minStartDate: true
      },
      "location": {
        required: true
      },
      "latitude": {
        required: true,
      },
      "longitude": {
        required: true,
      },
      "event_type": {
        required: true
      },
      "event_categories[]": {
        required: true
      },

      valueToBeTested: {
          required: true,
      }
    },
    });   
  
    // UserEvent Submitting Form 
    $('#UserEventForm').click(function() {
      if($('#profileForm').valid())
      {
        $('#UserEventFormBtn').prop('disabled', true);
        $('#UserEventForm').submit();
      } else {
        return false;
      }
    });
    
});
