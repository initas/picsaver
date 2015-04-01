<?php
	//------- Global Constant -------//
	
	#Time Related
	define('TODAY', date('Y-m-d H:i:s'));
	define('TODAY_DATE', date('Y-m-d'));
	define('TODAY_LABEL', date('Y-m-d-H-i-s'));
	define('WEEK', 'WEEK');
	define('MONTH', 'MONTH');
	
	#Validation Status Constants
	define('SUCCESS', 0);
	define('VALIDATION_ERROR', 1);
	define('RESULT_NOT_FOUND', 2);
	define('RESULT_NOT_NULL', 3);
	define('MISSING_FILE', 4);
	define('TRANSACTION_FAILED', 5);
	define('INVALID_TOKEN', 7);
	define('INVALID_CREDENTIAL', 8);
	define('INVALID_USER', 9);
	define('UNKNOWN_ERROR', 10);
	
	#Validation Message Constants
	define('MESSAGE_INVALID_USER', 'Invalid User');
	define('MESSAGE_INVALID_CREDENTIAL', 'Invalid Credential');
	define('MESSAGE_UNKNOWN_ERROR', 'Unknown Error');
	
	#Versioning
	define('VERSION', 'v1b1');