$(document).ready(function(){
   // package Form
  $("body").find('#firstEventCreate').validate({
     ignore: [],
	    onfocusout: function (valueToBeTested) {
	      $(valueToBeTested).valid();
	    },
  
	    highlight: function(element) {
	      $('element').removeClass("error");
	    },
 
  
    rules: {
      "title": {
        required: true,
        alphanumeric: true,
        maxlength: 30
      },
      "event_type": {
        required: true
         
      },
      "description": {
        required: true,
      },

      "location": {
        required: true,
      },
      // "min_person": {
      //   required: true,
      //   digits: true,
      //   min: 1,
      //   minlength: 1,
      //   maxlength: 4
      // },
      // "max_person": {
      //   required: true,
      //   digits: true,
      //   min: 1,
      //   minPerson: true,
      //   minlength: 1,
      //   maxlength: 10
      // },
      // "price": {
      //   required: true,
      //   amount: true,
      //   min: 1,
      //   minlength: 1,
      //   maxlength: 5
      // },
      // "no_of_hours": {
      //   required: true,
      //   min: 1,
      //   max: 24
      // },
      // "no_of_days": {
      //   required: true,
      //   min: 1,
      //   max: 366
      // },
      valueToBeTested: {
          required: true,
      }
    },
    });   
  
    // package Form Submitting 
    $('#packageFormBtn').click(function() {
      if($('#packageForm').valid()) {
        $('#packageFormBtn').prop('disabled', true);
        $('#packageForm').submit();
      } else {
        window.scrollTo({top: 0, behavior: 'smooth'});
        return false;
      }
    });


 $("body").find('#secondEventCreate').validate({
     ignore: [],
	    onfocusout: function (valueToBeTested) {
	      $(valueToBeTested).valid();
	    },
  
	    highlight: function(element) {
	      $('element').removeClass("error");
	    },
 
  
    rules: {
      
      "min_person": {
        required: true,
        digits: true,
        min: 1,
        minlength: 1,
        maxlength: 4
      },
      "max_person": {
        required: true,
        digits: true,
        min: 1,
        minPerson: true,
        minlength: 1,
        maxlength: 10
      },
      "start_date": {
        required: true,
        
      },
      "end_date": {
        required: true,
        
      },
      "start_time": {
        required: true,
        min: 1,
        max: 366
      },
      "end_time": {
        required: true,
        min: 1,
        max: 366
      },
      valueToBeTested: {
          required: true,
      }
    },
    });   
  
    // package Form Submitting 
    $('#packageFormBtn').click(function() {
      if($('#packageForm').valid()) {
        $('#packageFormBtn').prop('disabled', true);
        $('#packageForm').submit();
      } else {
        window.scrollTo({top: 0, behavior: 'smooth'});
        return false;
      }
    });



$("body").find('.step1').show();
$("body").find('.step2').hide();
$("body").find('.step3').hide();
$("body").find('.step4').hide();


 $('#event_categories').select2({ 
    closeOnSelect: false
   });










$("body").on('submit','#firstEventCreate',function(e){
       e.preventDefault();

     if($( this ).valid()){
     	 
     	 $("body").find('.step1').hide();
     	 $("body").find('.step2').show();
     }

});


$("body").on('submit','#secondEventCreate',function(e){
       e.preventDefault();

     if($( this ).valid()){
     	 
     	 $("body").find('.step1').hide();
     	 $("body").find('.step2').hide();
     	 $("body").find('.step3').show();
     }

});








function stepCompletdAjax() {
    $.ajax({
        headers: { 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
        url: url,
        type: "post",
        dataType: "JSON",
        data: { '_token': $('meta[name="csrf-token"]').attr('content'), 'id': selectedEvent },
        success: function(res)
        {
          $.each(res.category_variation, function(key, value) {
            $("body").find('#event_categories')
            .append($("<option></option>")
            .attr("value", value.category.id)
            .text(value.category.label)); 
          });
        },
        error: function(err) {
            console.log(err);
        }
    });
}



    
    
});





































