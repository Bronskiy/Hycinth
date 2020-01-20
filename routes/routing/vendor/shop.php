<?php
Route::group(['prefix' => 'shop'], function(){




Route::get('/','Vendor\Shop\ShopController@index')->name('vendor.shop.index');


Route::post('/check-availability-shop','Vendor\Shop\ShopController@check')->name('shop.ajax.checkAvailablityValiadation');












});