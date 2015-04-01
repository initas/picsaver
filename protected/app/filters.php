<?php

/*
|--------------------------------------------------------------------------
| Application & Route Filters
|--------------------------------------------------------------------------
|
| Below you will find the "before" and "after" events for the application
| which may be used to do any work before or after a request into your
| application. Here you may also register your custom route filters.
|
*/

App::before(function($request)
{
	//
});


App::after(function($request, $response)
{
	//
});

/*
|--------------------------------------------------------------------------
| Authentication Filters
|--------------------------------------------------------------------------
|
| The following filters are used to verify that the user of the current
| session is logged into this application. The "basic" filter easily
| integrates HTTP Basic authentication for quick, simple checking.
|
*/

Route::filter('auth', function()
{
	if (Auth::guest())
	{
		if (Request::ajax())
		{
			return Response::make('Unauthorized', 401);
		}
		else
		{
			return Redirect::guest('login');
		}
	}
});


Route::filter('auth.basic', function()
{
	return Auth::basic();
});

/*
|--------------------------------------------------------------------------
| Guest Filter
|--------------------------------------------------------------------------
|
| The "guest" filter is the counterpart of the authentication filters as
| it simply checks that the current user is not logged in. A redirect
| response will be issued if they are, which you may freely change.
|
*/

Route::filter('guest', function()
{
	if (Auth::check()) return Redirect::to('/');
});

/*
|--------------------------------------------------------------------------
| CSRF Protection Filter
|--------------------------------------------------------------------------
|
| The CSRF filter is responsible for protecting your application against
| cross-site request forgery attacks. If this special token in a user
| session does not match the one given in this request, we'll bail.
|
*/

Route::filter('csrf', function()
{
	if (Session::token() !== Input::get('_token'))
	{
		throw new Illuminate\Session\TokenMismatchException;
	}
});

/*
|--------------------------------------------------------------------------
| Custom API Filter
|--------------------------------------------------------------------------
*/

Route::filter('requireLogin.api', function($route)
{
	$user = models\v1b1\User::getUserLoginData();
	$user = $user->toArray();
	if(empty($user)){
		$response['status'] = INVALID_CREDENTIAL;
		$response['message'] = "Filter => ".MESSAGE_INVALID_CREDENTIAL;
		return Response::json($response);
	}
});

Route::filter('requireIdenticalLogin.api', function($route)
{
	$user = models\v1b1\User::getUserLoginData();
	$user = $user->toArray();
	if(empty($user)){
		$response['status'] = INVALID_CREDENTIAL;
		$response['message'] = "Filter => ".MESSAGE_INVALID_CREDENTIAL;
		return Response::json($response);
	}else{
		$username = $route->getParameter('username');
		if($user['username'] != $username){
			$response['status'] = INVALID_CREDENTIAL;
			$response['message'] = "Filter => Not Identical";
			return Response::json($response);
		}
	}
});

/*
|--------------------------------------------------------------------------
| Custom Web Filter
|--------------------------------------------------------------------------
*/

Route::filter('requireLogin.web', function($route)
{
	$user = models\v1b1\User::getUserLoginData();
	$user = $user->toArray();
	if(empty($user)){
		$response['status'] = INVALID_CREDENTIAL;
		$response['message'] = "Filter => ".MESSAGE_INVALID_CREDENTIAL;
		return Response::json($response);
	}
});

Route::filter('add.location.web', function($route)
{
	$actions = $route->getAction();
	$prefix = $actions['prefix'];
	$prefixs = explode('/', $prefix);
	$version = $prefixs[1];
	View::addLocation(__DIR__.'/views/web/'.$version);
	define('VERSION_URL', 'web/'.$version);
});

Route::filter('add.redirection.location.web', function($route)
{
	View::addLocation(__DIR__.'/views/web/'.VERSION);
	define('VERSION_URL', 'web/'.VERSION);
});
