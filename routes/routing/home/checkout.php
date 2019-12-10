<?php

 Route::group(['prefix' => 'checkout'], function() {

  
  

      Route::get('{dealSlug}/{packageSlug}','Home\Checkout\CheckoutController@payWithDeal')->name('payWithDeal');







     Route::post('{dealSlug}/{packageSlug}','Home\Checkout\CheckoutController@payingWithDeal')->name('payWithDeal');







});


Route::get('/thank-you','Home\Checkout\CheckoutController@thankyou')->name('thank-you');
