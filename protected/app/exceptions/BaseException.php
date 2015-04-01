<?php

abstract class BaseException extends \Exception {

    protected $errors;

    public function __construct($message = '', $code = 0, $errors = [])
    {
        $this->errors = $errors;
        
        parent::__construct($message, $code);
    }

    public function getErrors()
    {
        return $this->errors;
    }

} 