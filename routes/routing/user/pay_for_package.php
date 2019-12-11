  <?php


   Route::group(['middleware' => 'UserAuth','prefix' => 'buy-package'], function() {

        Route::post('{packageSlug}','Home\Checkout\StepController@eventType')->name('checkout.eventType');
        //Route::post('/{dealSlug}/{packageSlug}','Home\Checkout\StepController@withDealEventType')->name('checkout.eventType');


        # package review for package only
        Route::get('{packageSlug}/package/detail','Home\Checkout\StepController@packageType')->name('checkout.packageStep');
        Route::post('{packageSlug}/package/detail','Home\Checkout\StepController@packageTypePost')->name('checkout.packageStep');



          # package review for package only
        Route::get('{packageSlug}/billing/address','Home\Checkout\StepController@billingType')->name('checkout.billingStep');
        Route::post('{packageSlug}/billing/address','Home\Checkout\StepController@billingTypePost')->name('checkout.billingStep');

        # package review for package only
        Route::get('{packageSlug}/payment','Home\Checkout\StepController@paymentType')->name('checkout.paymentStep');
        Route::post('{packageSlug}/payment','Home\Checkout\StepController@paymentTypePost')->name('checkout.paymentStep');


        Route::get('{dealSlug}/{packageSlug}/deal','Home\Checkout\StepController@dealStep')->name('checkout.dealStep');
   });