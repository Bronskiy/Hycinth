<?php

         Route::group(['middleware' => ['UserAuth'],'prefix' => 'user'], function() {
         Route::get('/', 'Users\DashboardController@index')->name('user_dashboard'); 
         Route::get('/profile', 'Users\DashboardController@profile')->name('user_profile'); 
         Route::post('/profile', 'Users\DashboardController@updateProfile')->name('user_profile'); 

         #-----------------------------------------------------------------------------------
         #  Event Management ----------------------------------------------------------------
         #-----------------------------------------------------------------------------------

          Route::get('/events', 'Users\UserEventController@index')->name('user_events');
          Route::get('/events/create', 'Users\UserEventController@showCreateEvent')->name('user_show_create_event');
          Route::post('/events/create', 'Users\UserEventController@create')->name('user_show_create_event');
          Route::get('/events/edit/{slug}', 'Users\UserEventController@showEditEvent')->name('user_show_edit_event');
          Route::post('/events/edit/{slug}', 'Users\UserEventController@update')->name('user_show_edit_event');

         #-----------------------------------------------------------------------------------
         #  Event Management ----------------------------------------------------------------
         #-----------------------------------------------------------------------------------


         Route::get('/messages/chats', 'Users\ChatController@index')->name('deal_discount_chats'); 
         Route::get('/messages/chat/{id}', 'Users\ChatController@chat')->name('deal_discount_chatMessages'); 

         #-----------------------------------------------------------------------------------
         #  Event Management ----------------------------------------------------------------
         #-----------------------------------------------------------------------------------

         // payment
         Route::post('/paypalAuth', 'Users\PaymentController@paypalAuth')->name('user_paypalAuth');
         Route::post('/payToVendor', 'Users\PaymentController@payouts')->name('user_payToVendor');

});