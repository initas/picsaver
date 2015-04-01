<?php
Route::get('/', 'controllers\web\v1b1\ImageController@index');

/*--- AlbumController ---*/
Route::group(array('prefix' => 'album'), function()
{
	Route::get('/', 'controllers\web\v1b1\AlbumController@index');
	Route::get('/create', 'controllers\web\v1b1\AlbumController@create');
	Route::group(array('before' => 'requireLogin.web'), function(){
		Route::post('/', 'controllers\web\v1b1\AlbumController@insert');
		Route::post('/{sign_number}', 'controllers\web\v1b1\AlbumController@insertImages');
	});
});

/*--- ImageController ---*/
Route::group(array('prefix' => 'image'), function()
{
	Route::get('/', 'controllers\web\v1b1\ImageController@index');
	Route::get('/create', 'controllers\web\v1b1\ImageController@create');
	Route::get('/uploader', 'controllers\web\v1b1\ImageController@create');
	Route::group(array('prefix' => '{image_id}'), function()
	{
		Route::get('/', 'controllers\web\v1b1\ImageController@show');
	});
	Route::group(array('before' => 'requireLogin.web'), function(){
		Route::post('/', 'controllers\web\v1b1\ImageController@insert');
	});
});

/*--- Embed ---*/
Route::group(array('prefix' => 'img'), function()
{
	Route::get('thumb/{size}/{file_name}', 'controllers\api\v1b1\ImageController@embedThumb');
	Route::get('height/{height}/{file_name}', 'controllers\api\v1b1\ImageController@embedByHeight');
	Route::get('width/{width}/{file_name}', 'controllers\api\v1b1\ImageController@embedByWidth');
	Route::get('{width}/{height}/{file_name}', 'controllers\api\v1b1\ImageController@embedCropped');
	Route::get('/{file_name}', 'controllers\api\v1b1\ImageController@embedOriginal');
});

/*--- Content ---*/
Route::group(array('prefix' => 'content'), function()
{
	Route::group(array('prefix' => 'album'), function()
	{
		Route::get('/', 'controllers\web\v1b1\AlbumController@indexContent');
		Route::get('/uploader/{sign_number}', 'controllers\web\v1b1\AlbumController@uploaderContent');
	});
	Route::group(array('prefix' => 'image'), function()
	{
		Route::get('/', 'controllers\web\v1b1\ImageController@indexContent');
	});
});