<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Qortex\MainController;
use App\Http\Controllers\Qortex\IndexController;


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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

//Route::resource ('Qortex/main', MainController::class);

Route::group(['namespace'=>'Qortex'],function(){
    Route::get ('/artist', 'IndexController');
    Route::get ('/albums/{artist}', 'ShowController');
    Route::get ('/songs/{album}', 'ShowSongsController');
    Route::post ('/albums/create', 'StoreController');
    Route::post ('/songs', 'StoreSongsController');
});

