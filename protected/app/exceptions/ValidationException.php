<?php

class ValidationException extends \BaseException {

    public function __construct($errors = [])
    {
        $this->errors = $errors;
        parent::__construct('Validation Error', VALIDATION_ERROR, $errors);
    }
	
}