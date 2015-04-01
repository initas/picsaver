<?php
namespace models\v1b1;
use \Auth;
use \Request;

use LaravelBook\Ardent\Ardent;
use Illuminate\Database\Eloquent\SoftDeletingTrait;
use Illuminate\Auth\UserTrait;
use Illuminate\Auth\UserInterface;
use Illuminate\Auth\Reminders\RemindableTrait;
use Illuminate\Auth\Reminders\RemindableInterface;

class User extends Ardent implements UserInterface, RemindableInterface {

	/*
	|--------------------------------------------------------------------------
	| General Setups
	|--------------------------------------------------------------------------
	*/
	use UserTrait, RemindableTrait;
	use SoftDeletingTrait;
    protected $dates = ['deleted_at'];
    protected $softDelete = true;
	protected $table = 'users';				
	protected $fillable = array('');
	protected $hidden = array(
		'updated_at',
		'deleted_at',
		'password'
	);
	
	/*
	|--------------------------------------------------------------------------
	| Ardent Setups
	|--------------------------------------------------------------------------
	*/
	public $autoPurgeRedundantAttributes = true;
	public $autoHydrateEntityFromInput = true;
  	public $forceEntityHydrationFromInput = true;
  	public $autoHashPasswordAttributes = true;
	
  	public static $passwordAttributes  = array('password');
    public static $rules;
	
	public static function setRules() 
    {
    	$rules = array();
		
		$rules['name'] = 'alpha_spaces|between:1,255';
        $rules['username'] = 'alpha_num|unique:users,username|between:1,255';
    	$rules['email'] = 'required|email|unique:users,email';
    	$rules['gender'] = 'in:m,M,f,F';
    	$rules['date_of_birth'] = 'date';
        $rules['password'] = 'between:1,255';
    	$rules['profile_image_url'] = '';
    	$rules['profile_image_size'] = 'integer';
    	$rules['profile_image_mime'] = '';
		
        self::$rules = $rules;
    }
	
	public static $relationsData = array(
		'image_downloads'		=> array(self::BELONGS_TO_MANY, 'models\v1b1\Image', 'table' => 'image_downloads'),
		'image_likes'			=> array(self::BELONGS_TO_MANY, 'models\v1b1\Image', 'table' => 'image_likes'),
		'image_pins'			=> array(self::BELONGS_TO_MANY, 'models\v1b1\Image', 'table' => 'image_pins')
	);
	
    public static function boot()
    {
        parent::boot();
        self::setRules();
    }
	
	/*
	|--------------------------------------------------------------------------
	| Methods
	|--------------------------------------------------------------------------
	*/

	#auth
	public static function getUserLoginData()
	{	
		$user = User::checkUserAPI();
		if(!$user) {
			$user = Auth::user();
			if(!$user){
				$user = new User;
			}
		}
        return $user;
    }
    private static function checkUserAPI()
	{
        $username = Request::header('username');
        $email = Request::header('email');
        $user = User::whereRaw('email = ? or username = ?', array($email, $username))->first();
        return $user;
    }
	
	#retrieve
	public static function getUser($username){
		$user = User::where('username', '=', $username)->first();
		return $user;
	}
	
	#create
	public static function insertUser(){
		$user = new User;
		$user->fillable = array(
			'password',
			'password_confirmation',
			'username',
			'email',
			'name',
			'invited_by_user_id',
			'fb_id',
			'gender',
			'date_of_birth'
		);
		$user->save();
		return $user;
	}
	
	#update
	public static function updateUser($user){
		$user->fillable = array(
			'username',
			'email',
			'password',
			'password_confirmation',
			'name',
			'gender',
			'date_of_birth'
		);
		$user->updateUniques();
		return $user;
	}
}
