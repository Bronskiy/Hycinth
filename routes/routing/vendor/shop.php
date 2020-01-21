<?php
Route::group(['prefix' => 'shop'], function(){




Route::get('/create','Vendor\Shop\ShopController@first')->name('vendor.shop.index');
Route::post('/check-availability-shop','Vendor\Shop\ShopController@check')->name('shop.ajax.checkAvailablityValiadation');
Route::post('/create-shop-steps/{id}','Vendor\Shop\ShopController@firstStep')->name('shop.ajax.firstStep');
Route::get('/category/choose','Vendor\Shop\ShopController@secondStep')->name('shop.ajax.secondStep');
Route::get('/category/subcategory/choose','Vendor\Shop\ShopController@thirdStep')->name('shop.ajax.thirdStep');
Route::get('/','Vendor\Shop\ShopController@index')->name('vendor.shop');






#=============================================================================================================
#  Create Products
#=============================================================================================================

Route::get('/products','Vendor\Shop\ProductController@index')->name('vendor.shop.products.index');


#=============================================================================================================
#  Create Products
#=============================================================================================================


});