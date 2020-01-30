



$("body").on('click','.wishlist',function(e){
    e.preventDefault();

    var $this = $( this );
    var $redirectLink = $("body").attr('data-redirect');
    

    if(!$this.hasClass('active')){
     $.ajax({
               url : $this.attr('data-url'),
               type: 'POST',
               data :{
                 redirectLink:$redirectLink
               },   
               dataTYPE:'JSON',
               headers: {
                 'X-CSRF-TOKEN': $('input[name=_token]').val()
               },
                beforeSend: function() {
                },
                success: function (result) {
                        if(parseInt(result.status) == 1){
                            $this.addClass('active');

                            $("body").find('#myShopWishList').text(result.myShopWishList);
                        }else{
                        	window.location.href = result.url;
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





function messagePOPUP(message) {
	return '<div class="messagePOPUP">'+message+'</div>';
}









