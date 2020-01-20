$(function(){



var $checkAvailabilty = $("body").find('#checkAvailabilty').val();


$("body").find('#shopCreate').validate({
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
		      "shop_name": { 
		          required: true,
		          alphanumeric: true,
		          maxlength: 30,
		          remote:{
		          	       url:$checkAvailabilty,
		          	       type:"POST"
		          }
		      },
		      logo:{
		      	required: true
		      },
		      valueToBeTested: {
		          required: true,
		      }
		    } 
 });   
  
     




//--------------------------------------------------------------------------------
//--------------------------------------------------------------------------------
//--------------------------------------------------------------------------------


$("body").on('submit','#shopCreate',function(e){
    e.preventDefault();

    if($(this).valid()){
    	submitShopForm($(this));
    }
});




//--------------------------------------------------------------------------------
//--------------------------------------------------------------------------------
//--------------------------------------------------------------------------------



function submitShopForm($this) {
   var $val = parseInt($this.find('#ShopFormStep').val()) + 1;

   if($val < 5){
     ShopFormStep($val);
   }else{

   }
}



//--------------------------------------------------------------------------------
//--------------------------------------------------------------------------------
//--------------------------------------------------------------------------------



function ShopFormStep($val) {
  var $this = $("body").find('#shopCreate');
  $this.find('#ShopFormStep').val($val);
  
  shopHideShow();

	// switch($val){
 //        case 1:
 //          return 
 //          break;    
 //        case 2:

 //          break;    
 //        case 3:

 //          break;    
 //        case 4:

 //          break;    
 //        case 5:

 //          break;    
 //        case 6:

 //          break; 

	// }
}




//--------------------------------------------------------------------------------
//--------------------------------------------------------------------------------
//--------------------------------------------------------------------------------




function shopHideShow() {
	  var $this = $("body").find('#shopCreate');
      var $step = $this.find('#ShopFormStep').val(); 
      // movingIn
      // movingOutFoward
      // movingOutBackward

      $this.find('.panel').each(function(){
      	   var $cStep = parseInt($(this ).attr('data-step'));
           if($cStep < parseInt($step)){
           	  $(this).removeClass('movingOutFoward');
           	  $(this).removeClass('movingIn');
           	  $(this).addClass('movingOutBackward');
           }else if($cStep == parseInt($step)){
           	  $(this).removeClass('movingOutFoward');
           	  $(this).removeClass('movingOutBackward');
           	  $(this).addClass('movingIn');
           }else{
           	  $(this).removeClass('movingOutBackward');
           	  $(this).removeClass('movingIn');
           	  $(this).addClass('movingOutFoward');
           }
      });
}






//--------------------------------------------------------------------------------
//--------------------------------------------------------------------------------
//--------------------------------------------------------------------------------
 

});


 






























