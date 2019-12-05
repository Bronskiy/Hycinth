<?php







Route::group(['prefix' => 'ajax'], function(){

  Route::post('/send-message/{id}', 'Users\ChatController@sendMesage')->name('deal_discount_sendMessages'); 
  Route::get('/get-message/{id}', 'Users\ChatController@getMessages')->name('deal_discount_getMessages'); 
  Route::get('/get-chat-list', 'Users\ChatController@getList')->name('get_chat_list'); 
  Route::get('/get-messages/{id}', 'Users\ChatController@getChatBox')->name('chat_user_getMessages');  

});























