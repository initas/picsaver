<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/


//@section = 'API-V1-B1'
//------------------------------------------------ API Version 1 Build 1 ------------------------------------------------//
Route::group(array('prefix' => 'api/v1b1', 'before' => 'auth.api|requireValidToken.api'), function() 
{
	require app_path().'/routes/api/v1b1.php';
});

//@section = 'Web-V1-B1'
//------------------------------------------------ Web Version 1 Build 1 ------------------------------------------------//
Route::group(array('prefix' => 'web/v1b1', 'before' => 'addLocation.web'), function() 
{
	require app_path().'/routes/web/v1b1.php';
});

//@section = 'Web-Redirection'
//------------------------------------------------ Web Redirection ------------------------------------------------//
Route::group(array('prefix' => 'web', 'before' => 'addRedirectLocation.web'), function() 
{
	require app_path().'/routes/web/'.VERSION.'.php';
});


//@section = 'Root-Redirection'
//------------------------------------------------ Root Redirection ------------------------------------------------//
Route::group(array('prefix' => '/', 'before' => 'add.redirection.location.web'), function() 
{
	require app_path().'/routes/web/'.VERSION.'.php';
});
