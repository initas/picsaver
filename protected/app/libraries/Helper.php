<?php
class Helper{
	public static function getResults($eloquentObject){
		$response['status'] = UNKNOWN_ERROR;
		if(!$eloquentObject->isEmpty()){
			$response['results'] = $eloquentObject->toArray();
			$response['status'] = SUCCESS;
		}else{
			$response['status'] = RESULT_NOT_FOUND;
		}
		return $response;
	}
	public static function getResult($eloquentObject){
		$response['status'] = UNKNOWN_ERROR;
		if($eloquentObject!=null){
			$response['result'] = $eloquentObject->toArray();
			$response['status'] = SUCCESS;
		}else{
			$response['status'] = RESULT_NOT_FOUND;
		}
		return $response;
	}
	public static function insertResult($eloquentObject){
		$response = array();
		$response['status'] = UNKNOWN_ERROR;
		if($eloquentObject->errors()->isEmpty() && !isset($eloquentObject->customErrors)){
			$response['result'] = $eloquentObject->find($eloquentObject->id);
			$response['status'] = SUCCESS;
		}elseif(isset($eloquentObject->customErrors)){
			$response['errors'] = $eloquentObject->customErrors;
			$response['status'] = VALIDATION_ERROR;
		}else{
			$response['errors'] = $eloquentObject->errors();
			$response['status'] = VALIDATION_ERROR;
		}
		return $response;
	}
	public static function updateResult($eloquentObject){
		$response = array();
		$response['status'] = UNKNOWN_ERROR;
		if($eloquentObject->errors()->isEmpty() && !isset($eloquentObject->customErrors)){
			$response['result'] = $eloquentObject->find($eloquentObject->id);
			$response['status'] = SUCCESS;
		}elseif(isset($eloquentObject->customErrors)){
			$response['errors'] = $eloquentObject->customErrors;
			$response['status'] = VALIDATION_ERROR;
		}else{
			$response['errors'] = $eloquentObject->errors();
			$response['status'] = VALIDATION_ERROR;
		}
		return $response;
	}
	public static function deleteResult($eloquentObject){
		$response = array();
		$response['status'] = UNKNOWN_ERROR;
		if($eloquentObject->errors()->isEmpty() && !isset($eloquentObject->customErrors)){
			$response['result'] = $eloquentObject->toArray();
			$response['status'] = SUCCESS;
		}elseif(isset($eloquentObject->customErrors)){
			$response['errors'] = $eloquentObject->customErrors;
			$response['status'] = VALIDATION_ERROR;
		}else{
			$response['errors'] = $eloquentObject->errors();
			$response['status'] = VALIDATION_ERROR;
		}
		return $response;
	}
}