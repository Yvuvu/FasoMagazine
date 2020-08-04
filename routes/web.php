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

// Route::get('/', function () {
//     return view('accueil');
// });

Route::get('/', 'PostController@index');


Route::get('post/{slug}', 'PostController@showpost');

Route::get('category/{id}', 'PostController@categorie');
Route::get('economie', 'PostController@categorieeconomie');
Route::get('societe', 'PostController@categoriesociete');
Route::get('cooperation', 'PostController@categoriecooperation');
Route::get('culture', 'PostController@categorieculture');


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Route::get('international', 'ApiController@displayNews');
Route::post('sourceId', 'ApiController@displayNews');
Route::get('inter', 'ApiController@displayNew');
Route::post('sourceId', 'ApiController@displayNew');

// Route::get('/','NewsletterController@index');
Route::post('newsletter','NewsletterController@store');
