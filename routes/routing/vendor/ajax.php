<?php





        #-----------------------------------------------------------------------------------
        #  vendor De;as and Discount
        #-----------------------------------------------------------------------------------

         Route::get('/category/{slug}/deals', 'Vendor\DealController@index')->name('vendor_deals_management');

         Route::get('/category/{slug}/deals/add', 'Vendor\DealController@add')->name('vendor_add_deals_management');
         Route::post('/category/{slug}/deals/add', 'Vendor\DealController@store')->name('vendor_add_deals_management');



         Route::get('/category/{slug}/deals/edit/{id}', 'Vendor\DealController@edit')->name('vendor_edit_deals_management');
         Route::post('/category/{slug}/deals/edit/{id}', 'Vendor\DealController@update')->name('vendor_edit_deals_management');



         Route::get('/category/{slug}/deals/delete/{id}', 'Vendor\DealController@delete')->name('vendor_delete_deals_management');




        #-----------------------------------------------------------------------------------
        #  Prohibtion & Restrictions
        #-----------------------------------------------------------------------------------


        Route::get('/category/{slug}/prohibtion/restrictions', 'Vendor\ManagementController@prohibtion')->name('vendor_prohibtion_management');


        Route::get('/category/{slug}/prohibtion/restrictions/add', 'Vendor\ManagementController@prohibtionAdd')->name('vendor_add_prohibtion_management');
        
       Route::post('/category/{slug}/prohibtion/restrictions/add', 'Vendor\ManagementController@prohibtionStore')->name('vendor_add_prohibtion_management');






