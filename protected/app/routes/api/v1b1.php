<?php

/*--- AlbumController ---*/
Route::group(array('prefix' => 'album'), function()
{
	Route::get('/', 'controllers\api\v1b1\AlbumController@index');
	Route::group(array('before' => 'requireLogin.api'), function(){
		Route::post('/', 'controllers\api\v1b1\AlbumController@insert');
	});
	Route::group(array('prefix' => '{album_id}'), function()
	{
		Route::get('/', 'controllers\api\v1b1\AlbumController@show');
		Route::group(array('before' => 'requireLogin.api'), function(){
			Route::put('/', 'controllers\api\v1b1\AlbumController@update');
			Route::delete('/', 'controllers\api\v1b1\AlbumController@delete');
		});
	});
});

/*--- ImageController ---*/
Route::group(array('prefix' => 'image'), function()
{
	Route::get('/', 'controllers\api\v1b1\ImageController@index');
	Route::get('/search', 'controllers\api\v1b1\ImageController@search');
	Route::get('/most-viewed', 'controllers\api\v1b1\ImageController@getMostViewedImages');
	Route::get('/most-downloaded', 'controllers\api\v1b1\ImageController@getMostDownloadedImages');
	Route::get('/most-liked', 'controllers\api\v1b1\ImageController@getMostLikedImages');
	Route::get('/most-pinned', 'controllers\api\v1b1\ImageController@getMostPinnedImages');
	Route::group(array('before' => 'requireLogin.api'), function(){
		Route::post('/', 'controllers\api\v1b1\ImageController@insert');
	});
	Route::group(array('prefix' => 'embed'), function()
	{
		Route::get('thumb/{size}/{file_name}', 'controllers\api\v1b1\ImageController@embedThumb');
		Route::get('height/{height}/{file_name}', 'controllers\api\v1b1\ImageController@embedByHeight');
		Route::get('width/{width}/{file_name}', 'controllers\api\v1b1\ImageController@embedByWidth');
		Route::get('{width}/{height}/{file_name}', 'controllers\api\v1b1\ImageController@embedCropped');
		Route::get('{x}/{y}/{width}/{height}/{file_name}', 'controllers\api\v1b1\ImageController@embedCroppedXY');
		Route::get('/{file_name}', 'controllers\api\v1b1\ImageController@embedOriginal');
	});
	Route::group(array('prefix' => '{image_id}'), function()
	{
		Route::get('/', 'controllers\api\v1b1\ImageController@show');
		Route::get('/downloads', 'controllers\api\v1b1\ImageController@getImageDownloads');
		Route::get('/likes', 'controllers\api\v1b1\ImageController@getImageLikes');
		Route::get('/pins', 'controllers\api\v1b1\ImageController@getImagePins');
		
		Route::group(array('before' => 'requireLogin.api'), function(){
			Route::post('/like', 'controllers\api\v1b1\ImageController@like');
			Route::post('/unlike', 'controllers\api\v1b1\ImageController@unlike');
			Route::post('/pin', 'controllers\api\v1b1\ImageController@pin');
			Route::post('/unpin', 'controllers\api\v1b1\ImageController@unpin');
			
			Route::put('/', 'controllers\api\v1b1\ImageController@update');
			Route::delete('/', 'controllers\api\v1b1\ImageController@delete');
		});
	});
});

/*--- UserController ---*/
Route::group(array('prefix' => 'user'), function()
{
	Route::post('/', 'controllers\api\v1b1\UserController@insert');
	Route::group(array('prefix' => '{username}'), function()
	{
		Route::get('/', 'controllers\api\v1b1\UserController@show');
		Route::get('/image', 'controllers\api\v1b1\ImageController@getUserImages');
		Route::group(array('before' => 'requireLogin.api|requireIdenticalLogin.api'), function(){
			Route::put('/', 'controllers\api\v1b1\UserController@update');
		});
	});
});