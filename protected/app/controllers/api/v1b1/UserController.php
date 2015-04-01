<?php
namespace controllers\api\v1b1;
use models\v1b1\User;
use \Helper;
use \Response;
class UserController extends \BaseController {
	#GET
	public function show($username)
	{
		$user = User::getUser($username);
		$response = Helper::getResult($user);
		return Response::json($response); 
	}
	
	#POST
	public function insert()
	{
		$user = User::insertUser();
		$response = Helper::insertResult($user);
		return Response::json($response); 
	}
	
	#PUT
	public function update($username)
	{
		$user = User::getUser($username);
		$response = Helper::getResult($user);
		
		if($response['status']==SUCCESS){
			$user = User::updateUser($user);
			$response = Helper::updateResult($user);
		}
		return Response::json($response); 
	}
}