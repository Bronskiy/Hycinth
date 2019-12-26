<?php

 Route::group(['middleware' => ['UserAuth'],'prefix' => 'user'], function() {
         Route::get('/', 'Users\DashboardController@index')->name('user_dashboard'); 
         Route::get('/profile', 'Users\DashboardController@profile')->name('user_profile'); 
         Route::post('/profile', 'Users\DashboardController@updateProfile')->name('user_profile'); 

         #-----------------------------------------------------------------------------------
         #  Event Management ----------------------------------------------------------------
         #-----------------------------------------------------------------------------------

          Route::get('/events', 'Users\UserEventController@index')->name('user_events');
          Route::get('/events/{id}', 'Users\UserEventController@index')->name('user_event');
          Route::get('/event/create', 'Users\UserEventController@showCreateEvent')->name('user_show_create_event');
          Route::post('/event/create', 'Users\UserEventController@create')->name('user_show_create_event');
          Route::get('/events/edit/{slug}', 'Users\UserEventController@showEditEvent')->name('user_show_edit_event');
          Route::get('/events/detail/{slug}', 'Users\UserEventController@showDetailEvent')->name('user_show_detail_event');
          Route::post('/events/edit/{slug}', 'Users\UserEventController@update')->name('user_show_edit_event');
          Route::post('/events/update/{slug}', 'Users\UserEventController@eventExtraDetail')->name('eventExtraDetail');


         #-----------------------------------------------------------------------------------
         #  Event Management ----------------------------------------------------------------
         #-----------------------------------------------------------------------------------
          
          Route::get('/favourite-vendors/{id}', 'Users\DashboardController@addFavouriteVendors')->name('user_add_favourite_vendors');
          Route::get('/favourite-vendors', 'Users\DashboardController@favouriteVendors')->name('user_show_favourite_vendors');
          Route::get('/favourite-vendors/delete/{id}', 'Users\DashboardController@deleteFavouriteVendor')->name('user_delete_favourite_vendors');


         Route::get('/messages/chats', 'Users\ChatController@index')->name('deal_discount_chats'); 
         Route::get('/messages/chat/{id}', 'Users\ChatController@chat')->name('deal_discount_chatMessages'); 

         #-----------------------------------------------------------------------------------
         #  Event Management ----------------------------------------------------------------
         #-----------------------------------------------------------------------------------


         #-----------------------------------------------------------------------------------
         #  Orders Management ----------------------------------------------------------------
         #-----------------------------------------------------------------------------------


          Route::get('/orders', 'Users\UserOrderController@index')->name('user_orders'); 

});