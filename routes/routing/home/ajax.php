<?php





Route::group(['prefix' => 'ajax'], function(){

    Route::get('/get-services-according-to-category/{id}','Home\Ajax\SearchController@getServices')->name('get_homepage_formdata');




     Route::get('/get-businesses','Home\Services\VendorListingController@getBusiness')->name('get_all_businesses');


});




















