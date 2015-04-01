<?php
namespace controllers\web\v1b1;
use \User;
use \View;

class ImageController extends \BaseController{
	#view
	public function index()
	{
		return View::make('pages.image.index');
	}
	public function show($image_id)
	{
		$imageController = new \controllers\api\v1b1\ImageController;
		$response = json_decode($imageController->show($image_id)->getContent(), true);
		if($response['status']==SUCCESS){
			return View::make('pages.image.show')->with('response', $response);
		}else{
			return View::make('pages.not-found');
		}
	}
	public function create()
	{
		return View::make('pages.image.create');
	}
	
	#content
	public function indexContent()
	{
		$imageController = new \controllers\api\v1b1\ImageController;
		$response = json_decode($imageController->index()->getContent(), true);
		if($response['status']==SUCCESS){
			return View::make('contents.image.index')->with('response', $response);
		}else{
			return View::make('pages.not-found');
		}
	}
}