<?php
Route::group(['prefix' => 'shop'], function(){


Route::get('/','Shop\ShopController@index')->name('shop.index');
Route::get('/{cateSlug}/{slug}','Shop\CategoryController@index')->name('shop.subcategory');
Route::get('/{cateSlug}/{subcate}/{slug}','Shop\ProductController@index')->name('shop.childcategory');







Route::get('product/{slug}','Shop\ProductController@detail')->name('shop.product.detail.page');







});