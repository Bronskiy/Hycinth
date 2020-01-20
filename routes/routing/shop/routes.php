<?php
Route::group(['prefix' => 'shop'], function(){


Route::get('/','Shop\ShopController@index')->name('shop.index');
Route::get('/{cateSlug}/{slug}','Shop\ShopController@index')->name('shop.subcategory');
Route::get('/{cateSlug}/{subcate}/{slug}','Shop\ShopController@index')->name('shop.childcategory');















});