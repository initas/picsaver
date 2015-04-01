<?php

/*
* app/validators.php
*/

Validator::extend('alpha_spaces', function($attribute, $value)
{
    return preg_match('/^[\pL\s]+$/u', $value);
});
Validator::extend('passcheck', function ($attribute, $value, $parameters) 
{
	return Hash::check($value, $parameters[0]);
});