<?php

use Illuminate\Support\Facades\Route;

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

//Route::get('/', function () {
  //  return view('welcome');
//});
Route::group(['namespace'=>'Qortex'],function(){

    Route::get ('/create/album', 'CreateController')->name('qortex.create');
    Route::get ('/create/songs', 'CreateSongsController')->name('qortex.createsongs');
    Route::get ('/', 'IndexController')->name('qortex.index');
    Route::get ('/albums/{artist}', 'ShowController')->name('qortex.show');
    Route::get ('/songs/{album}', 'ShowSongsController')->name('qortex.showsongs');
    Route::post ('/albums/create', 'StoreController')->name('qortex.store');
    Route::post ('/songs', 'StoreSongsController')->name('qortex.storesongs');
});

