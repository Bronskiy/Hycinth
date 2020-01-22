

variationNavbarToggle();


function variationNavbarToggle() {
	 var $val = $("body").find('#variationType').val();
     var $navgeneral = $("body").find('a.nav-general');
     var $navvariation = $("body").find('a.nav-variation');
     if($val == 1){
          $navgeneral.hide();
          $navvariation.show();
          $("body").find('#generalBox').addClass('active');

     }else{
     	  $navgeneral.show();
          $navvariation.hide();
          $("body").find('#inventoryBox').addClass('active');

     }
}


 $("body").on('change','#variationType',function(){
            variationNavbarToggle();
 });



function showBoxActive() {
      $("body").find('.navVariant').removeClass('active');
}















































