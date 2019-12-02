<?php

# 1 home form data ('get_homepage_formdata')
# 2 get all busines for listing page ('get_all_businesses')
# 3 ome form data ('get_homepage_formdata')
# 4 ome form data ('get_all_dealAndDiscount')



Route::group(['prefix' => 'ajax'], function(){

    Route::get('/get-services-according-to-category/{id}','Home\Ajax\SearchController@getServices')->name('get_homepage_formdata');
    Route::get('/get-businesses','Home\Services\VendorListingController@getBusiness')->name('get_all_businesses');
    Route::get('/get-deals-&-discount','Home\Deals\DealsController@getDeals')->name('get_all_dealAndDiscount');
});




















