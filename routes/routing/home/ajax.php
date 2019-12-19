<?php

# 1 home form data ('get_homepage_formdata')
# 2 get all busines for listing page ('get_all_businesses')
# 3 ome form data ('get_homepage_formdata')
# 4 send request to vendor fo coupon code ('get-deal-request')



Route::group(['prefix' => 'ajax'], function(){

    Route::get('/get-services-according-to-category/{id}','Home\Ajax\SearchController@getServices')->name('get_homepage_formdata');
    Route::get('/get-businesses','Home\Services\VendorListingController@getBusiness')->name('get_all_businesses');
    Route::get('/get-deals-discounts','Home\Deals\DealsController@getDeals')->name('get_all_dealAndDiscount');
    Route::post('/get-deals-discounts-request','Home\Deals\DealsController@getDealRequest')->name('get-deal-request');

   Route::post('/ajax/register', 'HomeController@userRegister')->name('ajax_register');
   Route::post('/ajax/login', 'HomeController@userLogin')->name('ajax_login');
   Route::post('/ajax/login/popup', 'HomeController@userLoginPopup')->name('ajax_login_popup');









#------------------------------------------------------------------------------------------------------
#  Cart page
#------------------------------------------------------------------------------------------------------


Route::get('/check-package-carttime','Users\Cart\CartController@packageCheck')->name('cart.packageCheck');
Route::get('/get-event-categories','Users\Cart\CartController@eventCategories')->name('cart.eventCategories');
Route::post('/add-to-cart','Users\Cart\CartController@addToCart')->name('cart.addToCart');



#------------------------------------------------------------------------------------------------------
#  Cart page
#------------------------------------------------------------------------------------------------------






});




















