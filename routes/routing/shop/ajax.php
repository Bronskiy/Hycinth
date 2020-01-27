<?php




Route::group(['prefix' => 'ajax'], function(){




Route::get('/featured-category','Shop\ShopController@featuredCategory')->name('shop.ajax.featuredCategory');
Route::post('/category/product/filter/{id}','Shop\ProductFilterController@index')->name('shop.ajax.product.sidebarFilter');
 


Route::get('/add-to-cart/product/{id}','Shop\CartController@addToCart')->name('shop.ajax.addToCart');
 

});