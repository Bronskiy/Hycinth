<?php
Route::group(['prefix' => 'product'], function() {



#-----------------------------------------------------------------------------------
#  Category Management
#-----------------------------------------------------------------------------------

Route::get('category','Admin\Products\CategoryController@index')->name('admin.products.category');
Route::get('category/create','Admin\Products\CategoryController@create')->name('admin.products.category.create');
Route::post('category/create','Admin\Products\CategoryController@store')->name('admin.products.category.create');
Route::post('category/sorting','Admin\Products\CategoryController@sorting')->name('admin.products.category.sorting');
Route::get('/get-subcategory-by-parent','Admin\Products\CategoryController@category')->name('admin.products.category.data');


Route::get('category/edit/{id}','Admin\Products\CategoryController@edit')->name('admin.products.category.edit');
Route::post('category/edit/{id}','Admin\Products\CategoryController@update')->name('admin.products.category.edit');
















});