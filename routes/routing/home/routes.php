<?php





Route::get('/logout', function () {
\Auth::logout();
return redirect('/login');
});
Auth::routes(['verify' => true]);


Route::post('/login', 'LoginController@check')->name('post_login');
Route::get('/', 'HomeController@index')->name('homepage');
Route::get('/home', 'HomeController@index')->name('homepage2');
Route::get('/about-us', 'HomeController@about')->name('about_us');
Route::get('/contact-us', 'HomeController@contact')->name('contact_us');

Route::get('/vendor/register', 'HomeController@register')->name('vendor_register');

Route::post('/ajax/register', 'HomeController@userRegister')->name('ajax_register');
Route::post('/ajax/login', 'HomeController@userLogin')->name('ajax_login');


#------------------------------------------------------------------------------------------
#  Vendor Listing Page
#------------------------------------------------------------------------------------------
 Route::get('/vendor-listing', 'Home\Services\VendorListingController@index')->name('home_vendor_listing_page');
 Route::get('/detail-page', 'Home\Services\ServiceDetailController@index')->name('service_deatil_page');


 
 Route::get('/listing/{cateSlug}/{vendorSlug}', 'Home\Services\ServiceDetailController@index2')->name('vendor_detail_page');

 Route::get('/page/{slug}', 'HomeController@showCmsPage')->name('cmsPage');
 Route::get('/venues', 'Home\Services\VendorListingController@venue')->name('get_all_venues');
