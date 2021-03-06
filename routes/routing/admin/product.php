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


#-----------------------------------------------------------------------------------
#  Category Variations
#-----------------------------------------------------------------------------------

Route::get('category/variations/{id}','Admin\Products\CategoryController@variation')->name('admin.products.category.variation');
Route::post('category/variations/{id}','Admin\Products\CategoryController@postVariation')->name('admin.products.category.variation');


#-----------------------------------------------------------------------------------
#  Create Variation
#-----------------------------------------------------------------------------------

Route::get('variations','Admin\Products\VariationController@index')->name('admin.products.create.variations');
Route::post('variations','Admin\Products\VariationController@store')->name('admin.products.create.variations');
Route::get('variation/edit/{id}','Admin\Products\VariationController@index')->name('admin.products.edit.variations');
Route::post('variation/edit/{id}','Admin\Products\VariationController@store')->name('admin.products.edit.variations');




Route::get('variations/custom/fields/{type}','Admin\Products\VariationController@fields')->name('admin.products.custom.fields.variations');


Route::post('variations/custom/fields/{type}','Admin\Products\VariationController@postVariation')->name('admin.products.custom.fields.variations');


Route::get('variations/custom/fields/{type}/{id}','Admin\Products\VariationController@fields')->name('admin.products.custom.fields.edit.variations');
Route::post('variations/custom/fields/{type}/{id}','Admin\Products\VariationController@postVariation')->name('admin.products.custom.fields.edit.variations');
Route::get('variations/custom/fields/delete/{type}/{id}','Admin\Products\VariationController@fieldDelete')->name('admin.products.custom.fields.delete.variations');
#-----------------------------------------------------------------------------------
#  Product Variation Management
#-----------------------------------------------------------------------------------

Route::get('variations/{type}','Admin\Products\ProductVariationController@index')->name('admin.products.variations');
Route::get('variations/{type}/create','Admin\Products\ProductVariationController@create')->name('admin.products.variation');
Route::post('variations/{type}/create','Admin\Products\ProductVariationController@store')->name('admin.products.variation');

Route::get('variations/{type}/edit/{id}','Admin\Products\ProductVariationController@edit')->name('admin.products.variation.edit');
Route::post('variations/{type}/edit/{id}','Admin\Products\ProductVariationController@update')->name('admin.products.variation.edit');

Route::get('variations/{type}/ajax','Admin\Products\ProductVariationController@Ajax')->name('admin.products.variationAjax');

#-----------------------------------------------------------------------------------
#  Category Management
#-----------------------------------------------------------------------------------



#-----------------------------------------------------------------------------------
#  Product Brands Routes
#-----------------------------------------------------------------------------------

Route::get('list/brands','Admin\Products\BrandController@index')->name('admin.products.list.brands');
Route::get('list/brands/create','Admin\Products\BrandController@create')->name('admin.products.create.brands');
Route::post('list/brands/create','Admin\Products\BrandController@store')->name('admin.products.create.brands');
Route::get('list/brands/ajax','Admin\Products\BrandController@Ajax')->name('admin.products.brandsAjax');

#-----------------------------------------------------------------------------------
#  Product Brands Routes End
#-----------------------------------------------------------------------------------




});