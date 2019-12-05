$(document).ready(function() {
     // vendorPaymentSetting Form
  $('#vendorPaymentSettingForm').validate({
    onfocusout: function (valueToBeTested) {
      $(valueToBeTested).valid();
    },
  
    highlight: function(element) {
      $('element').removeClass("error");
    },
  
    rules: {
      "paypal_email": {
        required: true,
        email: true
      },
      "stripe_email": {
        required: true,
        email: true
      },
      valueToBeTested: {
          required: true,
      }
    },
    });   
  
    // vendorPaymentSetting Submitting Form 
    $('#vendorPaymentSettingFormBtn').click(function() {
      if($('#vendorPaymentSettingForm').valid())
      {
        $('#vendorPaymentSettingFormBtn').prop('disabled', true);
        $('#vendorPaymentSettingForm').submit();
      } else {
        return false;
      }
    });
    
});
