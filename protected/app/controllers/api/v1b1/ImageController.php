<?php
namespace controllers\api\v1b1;
use models\v1b1\Image;
use models\v1b1\ImageDownload;
use models\v1b1\ImageLike;
use models\v1b1\ImagePin;
use models\v1b1\ImageTag;
use models\v1b1\User;
use \DB;
use \Embed;
use \Helper;
use \Response;
use \Input;
class ImageController extends \BaseController {
	#GET
	public function search()
	{
		$parameter['find'] = Input::get('find');
		$image = Image::searchImage($parameter);
		$response = Helper::getResults($image);
		return Response::json($response); 
	}
	public function index()
	{
		$image = Image::getImages();
		$response = Helper::getResults($image);
		return Response::json($response); 
	}
	public function show($image_id)
	{
		$image = Image::getImage($image_id);
		$response = Helper::getResult($image);
		return Response::json($response); 
	}
	public function getMostViewedImages()
	{
		$image = Image::getMostViewedImages();
		$response = Helper::getResults($image);
		return Response::json($response);
	}
	public function getMostDownloadedImages()
	{
		$image = Image::getMostDownloadedImages();
		$response = Helper::getResults($image);
		return Response::json($response); 
	}
	public function getMostLikedImages()
	{
		$image = Image::getMostLikedImages();
		$response = Helper::getResults($image);
		return Response::json($response);
	}
	public function getMostPinnedImages()
	{
		$image = Image::getMostPinnedImages();
		$response = Helper::getResults($image);
		return Response::json($response);
	}
	public function getImageLikes($image_id)
	{
		$image = ImageLike::getImageLikes($image_id);
		$response = Helper::getResults($image);
		return Response::json($response);
	}
	public function getImageDownloads($image_id)
	{
		$image = ImageDownload::getImageDownloads($image_id);
		$response = Helper::getResults($image);
		return Response::json($response);
	}
	public function getImagePins($image_id)
	{
		$image = ImagePin::getImagePins($image_id);
		$response = Helper::getResults($image);
		return Response::json($response);
	}
	public function getUserImages()
	{
		$image = Image::getImages();
		$response = Helper::getResults($image);
		return Response::json($response);
	}
	
	#POST
	public function insert()
	{
		DB::beginTransaction();
		
		$user = User::getUserLoginData();
		$user_id = $user->id;
		
		
		$image = Image::insertImage($user_id);
		$response = Helper::insertResult($image);
		
		if($response['status']==SUCCESS)
		{
			$file = Input::file('image', null);
			$image = Image::uploadImageFile($image, $file);
			$response = Helper::insertResult($image);
			if($response['status']==SUCCESS)
			{
				$tag_names = Input::get('tag_names', null);
				if($tag_names!=null)
				{
					ImageTag::syncCardTags($image, $tag_names);
				}
				DB::commit();
			}
		}
		
		return Response::json($response); 
	}
	public function like($image_id)
	{
		$image = Image::getImage($image_id);
		$user = User::getUserLoginData();
		$user_id = $user->id;
		
		$image = ImageLike::like($image, $user_id);
		$response = Helper::getResult($image);
		
		return $response; 
	}
	public function unlike($image_id)
	{
		$image = Image::getImage($image_id);
		$user = User::getUserLoginData();
		$user_id = $user->id;
		
		$image = ImageLike::unlike($image, $user_id);
		$response = Helper::getResult($image);
		
		return $response; 
	}
	public function pin($image_id)
	{
		$image = Image::getImage($image_id);
		$user = User::getUserLoginData();
		$user_id = $user->id;
		
		$image = ImagePin::pin($image, $user_id);
		$response = Helper::getResult($image);
		
		return $response; 
	}
	public function unpin($image_id)
	{
		$image = Image::getImage($image_id);
		$user = User::getUserLoginData();
		$user_id = $user->id;
		
		$image = ImagePin::unpin($image, $user_id);
		$response = Helper::getResult($image);
		
		return $response; 
	}
	
	#PUT
	public function update($image_id)
	{
		DB::beginTransaction();
		
		$image = Image::getImage($image_id);
		$response = Helper::getResult($image);
		
		if($response['status']==SUCCESS){
			$old_image_url = $image->image_url;
			$image = Image::updateImage($image);
			$response = Helper::updateResult($image);
			
			if($response['status']==SUCCESS)
			{
				$tag_names = Input::get('tag_names', null);
				if($tag_names!=null)
				{
					ImageTag::syncCardTags($image, $tag_names);
				}
				$file = Input::file('image', null);
				if($file != null)
				{
					$image = Image::uploadImageFile($image, $file);
					$response = Helper::insertResult($image);
					if($response['status']==SUCCESS)
					{
						DB::commit();
						$image = Image::deleteImageFile($old_image_url);
					}
				}
				else
				{
					DB::commit();
				}
			}
		}
		
		return Response::json($response); 
	}
	
	#DELETE
	public function delete($image_id)
	{
		DB::beginTransaction();
		
		$image = Image::getImage($image_id);
		$response = Helper::getResult($image);
		
		if($response['status']==SUCCESS)
		{
			$image = Image::deleteImage($image);
			$response = Helper::deleteResult($image);
			if($response['status']==SUCCESS)
			{
				DB::commit();
				$image = Image::deleteImageFile($image->image_url);
			}
		}
		
		return Response::json($response); 
	}
	
	#EMBED
	public function embedOriginal($file_name)
	{
		Embed::original($file_name);
	}
	public function embedCropped($w, $h, $file_name)
	{
		Embed::cropImage($w, $h, $file_name);
	}
	public function embedCroppedXY($x, $y, $w, $h, $file_name)
	{
		Embed::cropImageXY($x, $y, $w, $h, $file_name);
	}
	public function embedThumb($size, $file_name)
	{
		Embed::cropImage($size, $size, $file_name);
	}
	public function embedByHeight($newsize, $file_name)
	{
		Embed::resizeImage($newsize, $file_name, true);
	}
	public function embedByWidth($newsize, $file_name)
	{
		Embed::resizeImage($newsize, $file_name);
	}
	
}