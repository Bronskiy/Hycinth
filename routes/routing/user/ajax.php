<?php







Route::group(['prefix' => 'ajax'], function(){

  Route::post('/send-message/{id}', 'Users\ChatController@sendMesage')->name('deal_discount_sendMessages'); 
  Route::get('/get-message/{id}', 'Users\ChatController@getMessages')->name('deal_discount_getMessages'); 
  Route::get('/get-chat-list', 'Users\ChatController@getList')->name('get_chat_list'); 
  Route::get('/get-messages/{id}', 'Users\ChatController@getChatBox')->name('chat_user_getMessages');  
  Route::post('/get-event-categories', 'Users\UserEventController@getEventCategories')->name('user_get_event_categories');  


    Route::post('/get-step-2', 'Users\PopUpStepController@step2')->name('steps.second');  

});























