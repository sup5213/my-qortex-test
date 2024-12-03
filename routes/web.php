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

Route::get('/', function () {
    return view('welcome');
});
Route::group(['namespace'=>'Qortex'],function(){
    Route::get ('/main', 'IndexController')->name('qortex.index');
    Route::get ('/main/albums/{artist}', 'ShowController')->name('qortex.show');
    Route::get ('/main/songs/{album}', 'ShowSongsController')->name('qortex.showsongs');
    Route::get ('/create/album', 'CreateController')->name('qortex.create');
    Route::post ('/main/albums/create', 'StoreController')->name('qortex.store');
    Route::get ('/create/songs', 'CreateSongsController')->name('qortex.createsongs');
    Route::post ('/main/songs', 'StoreSongsController')->name('qortex.storesongs');
});

