<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/','VideosController@index');

//Route::get('/sc{id}','PagesController@showCategories');

Route::get('/contact','PagesController@contact');
Route::post('/contact','PagesController@contact');
Route::get('/about','PagesController@about');
Route::resource('videos', 'VideosController');
Route::auth();




