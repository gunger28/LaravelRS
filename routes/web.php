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

Route::get('/', 'App\Http\Controllers\MainController@logIn')->name('logIn');

Route::get('/home', 'App\Http\Controllers\MainController@index')->name('home');

Route::get('/workSpace', 'App\Http\Controllers\MainController@workSpace')->name('workSpace');

Route::get('/search', 'App\Http\Controllers\MainController@search')->name('search');

Route::get('/addNoteView', 'App\Http\Controllers\MainController@addNoteView')->name('addNoteView');

Route::get('/addNote', 'App\Http\Controllers\MainController@addNote')->name('addNote');

Route::get('/deleteNote', 'App\Http\Controllers\MainController@deleteNote')->name('deleteNote');

Route::get('/editNoteView', 'App\Http\Controllers\MainController@editNoteView')->name('editNoteView');

Route::get('/editNote', 'App\Http\Controllers\MainController@editNote')->name('editNote');

Route::get('/about', function (){
    return 'about';
});
