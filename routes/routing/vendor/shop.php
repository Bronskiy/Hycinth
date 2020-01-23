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
Route::get('/products/create','Vendor\Shop\ProductController@create')->name('vendor.shop.products.create');
Route::get('/products/edit/{id}','Vendor\Shop\ProductController@edit')->name('vendor.shop.products.edit');
Route::post('/products/save/category/{id}','Vendor\Shop\ProductController@saveCategory')->name('vendor.shop.products.saveCategory');

#=============================================================================================================
#  Create Products
#=============================================================================================================
Route::get('/products/ajax/category','Vendor\Shop\ProductController@ajaxCategory')->name('vendor.shop.products.ajax.categories');







#=============================================================================================================
#  Product Variation Ajax
#=============================================================================================================


Route::get('/products/ajax/category/{id}','Vendor\Shop\VariationController@types')->name('vendor.shop.variation.types');
Route::get('/products/ajax/save/attributes/{id}','Vendor\Shop\VariationController@attributes')->name('vendor.shop.variation.attributes');
Route::post('/products/ajax/save/attributes/{id}','Vendor\Shop\VariationController@saveAttributes')->name('vendor.shop.variation.attributes');


Route::get('/products/ajax/add/item/variations/attributes/{id}','Vendor\Shop\VariationController@variationAttributeAddationItem')->name('vendor.shop.variations.add.attributes');


#=============================================================================================================
#  Product Inventory Ajax
#=============================================================================================================

Route::post('/products/ajax/save/Inventory/product/{id}',
	       'Vendor\Shop\VariationController@createInventory')->name('vendor.shop.variations.inventoryCreate');

#=============================================================================================================
#  Create Products
#=============================================================================================================


});