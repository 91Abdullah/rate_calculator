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
*/

Route::get('/', function () {
    return view('index');
});

Route::group(['prefix' => 'admin'], function(){

    Route::get('service', 'ServiceController@index');
    Route::get('destination', 'DestinationController@index');

    Route::get('service/create', 'ServiceController@create');
    Route::get('destination/create', 'DestinationController@create');

    Route::get('service/edit/{service}', 'ServiceController@edit');
    Route::get('destination/edit/{destination}', 'DestinationController@edit');
    
    Route::post('service', 'ServiceController@store');
    Route::post('destination', 'DestinationController@store');

    Route::get('service/create', 'ServiceController@create');
    Route::get('destination/create', 'DestinationController@create');

    Route::patch('service/update/{service}', 'ServiceController@update')->name('service.update');
    Route::patch('destination/update/{destination}', 'DestinationController@update')->name('destination.update');

    Route::delete('service/delete/{service}', 'ServiceController@destroy')->name('service.delete');
    Route::delete('destination/delete/{destination}', 'DestinationController@destroy')->name('destination.delete');
    
});
