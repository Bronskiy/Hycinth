$(function(){





// loading all cart items

loadCartItems(0);







$("body").on('submit','#CouponApply',function(event){
    event.preventDefault();
    var $this = $( this );

      $.ajax({
               url : $this.attr('action'),
               data : $this.serialize(),
               type: 'GET',   
               dataTYPE:'JSON',
               headers: {
                 'X-CSRF-TOKEN': $('input[name=_token]').val()
               },
                beforeSend: function() {
                   
                   	 $("body").find('.custom-loading').show();
                  
                },
                success: function (result) {

                	if(result.status == 1){
                		 
                	}
                        
                },
               complete: function() {
                        $("body").find('.custom-loading').hide();
               },
               error: function (jqXhr, textStatus, errorMessage) {
                     
               }

        });
});












//---------------------------------------------------------------------------------------------------------
//   load all cart Items
//---------------------------------------------------------------------------------------------------------


 function loadCartItems(loader = 1) {
        
        var $url = $("body").find('input[name=cartRoute]').val();
        var $CartItems = $("body").find('#CartItems');
        var $cartTotals = $("body").find('#cartTotals');
 	  $.ajax({
               url : $url,
              
               type: 'GET',   
               dataTYPE:'JSON',
               headers: {
                 'X-CSRF-TOKEN': $('input[name=_token]').val()
               },
                beforeSend: function() {
                   if(loader == 1){
                   	 $("body").find('.custom-loading').show();
                   }
                },
                success: function (result) {

                	if(result.status == 1){
                		$CartItems.html(result.data.items);
                		$cartTotals.html(result.data.amountDetail);
                	}
                        
                },
               complete: function() {
                        $("body").find('.custom-loading').hide();
               },
               error: function (jqXhr, textStatus, errorMessage) {
                     
               }

        });
 }


























});