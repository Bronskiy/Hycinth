<?php

 Route::group([['middleware' => 'Checkout'],'prefix' => 'checkout'], function() {

 	// paypal payment

 	Route::get('/billing-address','Users\Checkout\CheckoutController@billingAddress')->name('checkout.billingAdress');
 	Route::post('/billing-address','Users\Checkout\CheckoutController@postAddress')->name('checkout.billingAdress');


 	Route::get('/order-summary','Users\Checkout\CheckoutController@orderSummary')->name('checkout.orderSummary');
 	Route::get('/order-summary-data','Users\Checkout\CheckoutController@getOrderSummary')->name('checkout.getOrderSummary');


 	Route::get('/payment','Users\Checkout\CheckoutController@paymentPage')->name('checkout.paymentPage');
 	Route::post('/payment/stripe','Users\Checkout\CheckoutController@payWithStripe')->name('checkout.payWithStripe');
 
      
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
