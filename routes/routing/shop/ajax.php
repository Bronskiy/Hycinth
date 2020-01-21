<?php




Route::group(['prefix' => 'ajax'], function(){




Route::get('/featured-category','Shop\ShopController@featuredCategory')->name('shop.ajax.featuredCategory');
 








});