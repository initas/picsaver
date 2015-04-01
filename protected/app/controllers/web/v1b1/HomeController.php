<?php
namespace controllers\web\v1b1;
use \View;
class HomeController extends \BaseController {
	/*--- Return View ---*/
	public function index()
	{
		return View::make('pages.home.home');
	}
}