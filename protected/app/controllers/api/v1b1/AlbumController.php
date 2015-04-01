<?php
namespace controllers\api\v1b1;
use models\v1b1\Album;
use models\v1b1\User;
use \Helper;
use \Response;
class AlbumController extends \BaseController {
	#GET
	public function index()
	{
		$album = Album::getAlbums();
		$response = Helper::getResults($album);
		return Response::json($response); 
	}
	public function show($album_id)
	{
		$album = Album::getAlbum($album_id);
		$response = Helper::getResult($album);
		return Response::json($response); 
	}
	
	#POST
	public function insert()
	{
		$user = User::getUserLoginData();
		$user_id = $user->id;
		
		$album = Album::insertAlbum($user_id);
		$response = Helper::insertResult($album);
		
		return Response::json($response); 
	}
	
	#PUT
	public function update($album_id)
	{
		$album = Album::getAlbum($album_id);
		$response = Helper::getResult($album);
		
		if($response['status']==SUCCESS){
			$album = Album::updateAlbum($album);
			$response = Helper::updateResult($album);
		}
		
		return Response::json($response); 
	}
	
	#DELETE
	public function delete($album_id)
	{
		$album = Album::getAlbum($album_id);
		$response = Helper::getResult($album);
		
		if($response['status']==SUCCESS)
		{
			$album = Album::deleteAlbum($album);
			$response = Helper::deleteResult($album);
		}
		
		return Response::json($response); 
	}
	
}