<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/




//routes for about

Route::get('about', 'API\AboutController@index');
Route::get('about/{id}', 'API\AboutController@show');
Route::post('about', 'API\AboutController@store');
Route::put('about/{id}', 'API\AboutController@update');
Route::delete('about/{id}', 'API\AboutController@destroy');

//routes for history
Route::get('history', 'API\HistoryController@index');
Route::get('history/{id}', 'API\HistoryController@show');
Route::post('history', 'API\HistoryController@store');
Route::put('history/{id}', 'API\HistoryController@update');
Route::delete('history/{id}', 'API\HistoryController@destroy');

//routes for history

Route::get('contact', 'API\ContactController@index');
Route::get('contact/{id}', 'API\ContactController@show');
Route::post('contact', 'API\ContactController@store');
Route::put('contact/{id}', 'API\ContactController@update');
Route::delete('contact/{id}', 'API\ContactController@destroy');

Route::middleware('auth:api')->group( function () {
	//after authentication

	 });
