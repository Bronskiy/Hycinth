$(function(){

//=======================================================================================
variationNavbarToggle();
hasStockFunction();

function variationNavbarToggle() {
	 var loader = $("body").find('.loader3');
	 var $val = $("body").find('#variationType').val();
     var $navgeneral = $("body").find('a.nav-general');
     var $navvariation = $("body").find('a.nav-variation');
     loader.show();
     if($val == 1){
     	  showBoxActive($("body").find('.nav-inventory'));
          $navgeneral.hide();
          $navvariation.show();
          

     }else{

     	  showBoxActive($("body").find('.nav-general'));
     	  $navgeneral.show();
          $navvariation.hide();
          

     }
      loader.hide();
}




//=======================================================================================


 $("body").on('change','#variationType',function(){
            variationNavbarToggle();

 });



//=======================================================================================


function showBoxActive($this=null) {
      $("body").find('.navVariant').removeClass('active');
      
      if($this != null){
      	  $this.addClass('active');
       }
       variationBoxToggle();
}



//=======================================================================================


function variationBoxToggle() {
	  $("body").find('.variationBoxInner').hide();
	  $("body").find('.navVariant').each(function(){
	  	    if($(this).hasClass('active')){
	  	    	 var $variationBoxInner = $(this).attr('data-show');
	             $("body").find($variationBoxInner).show();
	  	    }
      });

}


//=======================================================================================


$("body").on('click','.navVariant',function(e){
   e.preventDefault();
   showBoxActive($(this));
});




//==========================================================================================


function hasStockFunction() {
	var $hasStock = $("body").find('#hasStock');
	var $hasStockClass = $("body").find('.hasStock');
	$hasStockClass.hide();
	if($hasStock.is(':checked')){
		$hasStockClass.show();
	}
}


$("body").on('change','#hasStock',function(){
   hasStockFunction();
});



//==========================================================================================
//==========================================================================================

$("body").on('click','#loadAllVariationOfProductBTN',function(e){
   e.preventDefault();
   var $url = $( this ).attr('data-route');
   var option = $("body").find('#loadAllVariationOfProduct');
   var val =  option.val();
          if(val != ''){
               option.find('option:selected').attr('disabled','true');
			   var $div =$("body").find('.loadAllVariationOfProduct');
			   getAllVariationDetailAjax($url,val,$div);
          	
          }

});

//==========================================================================================
//==========================================================================================



function getAllVariationDetailAjax($url,types,$divID) {
	 var variationType = $("body").find('#variationType').val();
	  $.ajax({
               url : $url,
               data : {
	                type:types,
	                variationType:variationType
               },
               type: 'GET',   
               dataTYPE:'JSON',
               headers: {
                 'X-CSRF-TOKEN': $('input[name=_token]').val()
               },
               success: function (result) {
		          $divID.append(result);
		          defaultJs();


               } 

      });
}


//===================================================================
defaultJs();

function defaultJs() {
	 

	 $("body").find('.select2').select2();
}





});




























