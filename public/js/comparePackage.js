$(function(){

var $getPackageBox = $('#getPackageBox').val();
var $getCompareInformation = $('#getCompareInformation').val();


function getAllPackageIds() {
	
	var $this = $("body").find('.comparePackages:checked');
   var arr =[];
   $this.each(function(){
         
         arr.push($(this).val());
   });
    console.log(arr);
   return arr;

}



$("body").on('change','.comparePackages',function(){
     getDataWithRequest($getPackageBox);
});




function getDataWithRequest(url) {
	
	      $.ajax({
               url : url,
               data : {
               	categories : getAllPackageIds(),
               },
               type: 'POST',   
               dataTYPE:'JSON',
               headers: {
                 'X-CSRF-TOKEN': $('input[name=_token]').val()
               },
                beforeSend: function() {
                    $("body").find('.custom-loading').show();
                     // $this.find('.messageNotofications').html('');
                     // $this.find('button.cstm-btn').attr('disabled','true');

                },
                success: function (result) {
                       if(parseInt(result.status) == 1){

                       	$("body").find('#com_pack_headings').html(result.htm);
                         
                       } 
               },
               complete: function() {
                        $("body").find('.custom-loading').hide();
               },
               error: function (jqXhr, textStatus, errorMessage) {
                     
               }

        });

}





$("body").on('click','.remove_fields',function(e){
	e.preventDefault();
   var $id = $(this).attr('data-pack');
   console.log($id);
   $("body").find($id).prop('checked',false);
    getDataWithRequest($getPackageBox);
});











// end of function
});