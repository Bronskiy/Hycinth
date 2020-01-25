
 

loadProductListWithFilter();

//===============================================================================================================



function loadProductListWithFilter() {
	 var $this = $("body").find('form#ProductFilterOfSidebar');
     var $url = $this.attr('action');
     var $divPath = $("body").find('#loadProducts');
	 $.ajax({
               url : $url,
               data : $this.serialize(),
               type: 'POST',   
               dataTYPE:'JSON',
               headers: {
                 'X-CSRF-TOKEN': $('input[name=_token]').val()
               },
                beforeSend: function() {
                },
                success: function (result) {
                        if(parseInt(result.status) == 1){
                            $divPath.html(result.htm) ;
                        }
               },
               complete: function() {
                        $("body").find('.custom-loading').hide();
               },
               error: function (jqXhr, textStatus, errorMessage) {
                     
               }

   });
}






//===============================================================================================================










































