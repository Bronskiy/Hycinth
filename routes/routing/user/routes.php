<?php

         Route::group(['middleware' => ['UserAuth'],'prefix' => 'user'], function() {
         Route::get('/', 'Users\DashboardController@index')->name('user_dashboard'); 
         Route::get('/profile', 'Users\DashboardController@profile')->name('user_profile'); 
         Route::post('/profile', 'Users\DashboardController@updateProfile')->name('user_profile'); 

         #-----------------------------------------------------------------------------------
         #  Event Management ----------------------------------------------------------------
         #-----------------------------------------------------------------------------------

          Route::get('/events', 'Users\EventController@index')->name('user_events');

         #-----------------------------------------------------------------------------------
         #  Event Management ----------------------------------------------------------------
         #-----------------------------------------------------------------------------------


         Route::get('/deal-discount-chats', 'Users\ChatController@index')->name('deal_discount_chats'); 
         Route::get('/deal-discount-chat/{id}', 'Users\ChatController@chat')->name('deal_discount_chatMessages'); 

         #-----------------------------------------------------------------------------------
         #  Event Management ----------------------------------------------------------------
         #-----------------------------------------------------------------------------------

         // payment
         Route::post('/paypalAuth', 'Users\PaymentController@paypalAuth')->name('user_paypalAuth');
         Route::post('/payToVendor', 'Users\PaymentController@payouts')->name('user_payToVendor');

});