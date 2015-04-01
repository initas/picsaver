<?php

class BaseController extends Controller
{
	protected function setupLayout()
	{
		if ( ! is_null($this->layout))
		{
			$this->layout = View::make($this->layout);
		}
	}
	public function checkStatuses($statuses){
		$response = true;
		$statuses = array_unique($statuses);
		foreach($statuses as $val){
			if($val!=SUCCESS && $val!=null){
				$response = false;
			}
		}
		return $response;
	}
}
