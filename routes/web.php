<?php
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
  sudo kill -9 `sudo lsof -t -i:9001`
*/


//Route::post('/vendor/register', 'HomeController@create')->name('vendor_register');







require __DIR__.'/routing/home/checkout.php';
require __DIR__.'/routing/home/routes.php';
require __DIR__.'/routing/home/ajax.php';
require __DIR__.'/routing/admin/routes.php';
require __DIR__.'/routing/vendor/routes.php';
require __DIR__.'/routing/user/ajax.php';
require __DIR__.'/routing/user/routes.php';








