<?php







Route::group(['prefix' => 'ajax'], function(){

Route::post('/send-message/{id}', 'Users\ChatController@sendMesage')->name('deal_discount_sendMessages'); 

Route::get('/get-message/{id}', 'Users\ChatController@getMessages')->name('deal_discount_getMessages'); 


});























