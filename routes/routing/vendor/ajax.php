<?php






Route::group(['prefix' => 'ajax'], function(){

Route::post('/upload-gallery-images','Vendor\ManagementController@uploadGalleryImage')->name('uploadGalleryImage');
 

    

});
