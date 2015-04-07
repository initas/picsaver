<?php
namespace controllers\web\v1b1;
use models\v1b1\User;
use models\v1b1\Image;
use \DB;
use \Input;
use \Redirect;
use \View;

class AlbumController extends \BaseController{
	#view
	public function index()
	{
		return View::make('pages.album.index');
	}
	public function create()
	{
		$user = User::getUserLoginData();
		$user_id = $user->id;
		$randomNumber = rand();
		$sign_number = time().$user_id.$randomNumber;
		return View::make('pages.album.create')->with('sign_number', $sign_number);
	}
	public function insert()
	{
		$albumController = new \controllers\api\v1b1\AlbumController;
		$response = json_decode($albumController->insert()->getContent(), true);
		if($response['status'] == SUCCESS){
			if(Input::has('sign_number')){
				$sign_number = Input::get('sign_number');
				$affected = DB::table('images')
					->where('sign_number', '=', $sign_number)
					->update(array(
						'album_id' => $response['result']['id'],
						'sign_number' => null,
					));
			}
			return Redirect::to('/');
		}else {
			return Redirect::back()
				->with('errors', $response['errors'])
				->withInput();
		}
	}
	public function insertImages($sign_number)
	{
		$imageController = new \controllers\api\v1b1\ImageController;
		$response = json_decode($imageController->insert()->getContent(), true);
		echo $response['result']['image_url'];
		exit;
	}
	
	#content
	public function indexContent()
	{
		$albumController = new \controllers\api\v1b1\AlbumController;
		$response = json_decode($albumController->index()->getContent(), true);
		if($response['status']==SUCCESS){
			return View::make('contents.album.index')->with('response', $response);
		}else{
			return View::make('pages.not-found');
		}
	}
	public function uploaderContent($sign_number)
	{
		$image = Image::where('sign_number', $sign_number)->get()->toArray();
		return View::make('contents.album.uploader')->with('sign_number', $sign_number)->with('images', $image);
	}
}