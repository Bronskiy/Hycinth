<?php

 Route::group(['prefix' => 'checkout'], function() {

 	// paypal payment




  
       

  


      
       //Route::get('buy-package/{packageSlug}','Home\Checkout\CheckoutController@payWithPackage')->name('payWithPackage');
      //Route::post('{packageSlug}','Home\Checkout\CheckoutController@payingWithPackage')->name('payingWithPackage');

#------------------------------------------------------------------------------------------------------
#----------------------------this will check user is logged in ----------------------------------------
#------------------------------------------------------------------------------------------------------


   require __DIR__.'/pay_for_deal.php';
   require __DIR__.'/pay_for_package.php';
#------------------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------------------

 });


Route::get('/thank-you', 'Home\Checkout\CheckoutController@thankyou')->name('thank-you');
