<?php

/*
|--------------------------------------------------------------------------
| Routes File
|--------------------------------------------------------------------------
|
| Here is where you will register all of the routes in an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| This route group applies the "web" middleware group to every route
| it contains. The "web" middleware group is defined in your HTTP
| kernel and includes session state, CSRF protection, and more.
|
*/


Route::group(['middleware' => 'web'], function () {
    Route::auth();
    Route::get('/',['as'=>'main','uses'=>'IndexController@index']);
    Route::get('projects',['as'=>'projectList','uses'=>'IndexController@projectList']);
    Route::get('projects/{slug}',['as'=>'projectCart','uses'=>'IndexController@projectCart']);

    Route::get('about-us',['as'=>'about','uses'=>'IndexController@about']);

    Route::get('blog',['as'=>'blog','uses'=>'BlogController@index']);
    Route::get('blog/{slug}',['as'=>'blog.record','uses'=>'BlogController@cart']);

});
