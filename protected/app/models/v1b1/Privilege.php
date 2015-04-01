<?php
namespace models\v1b1;
use \DB;
use Illuminate\Database\Eloquent\SoftDeletingTrait;
use LaravelBook\Ardent\Ardent;
class Privilege extends Ardent {
	/*
	|--------------------------------------------------------------------------
	| General Setups
	|--------------------------------------------------------------------------
	*/
	use SoftDeletingTrait;
    protected $dates = ['deleted_at'];
    protected $softDelete = true;
	protected $table = 'privileges';			
    protected $fillable = array('');
	protected $hidden = array(
		'updated_at',
		'deleted_at'
	);
	
	/*
	|--------------------------------------------------------------------------
	| Ardent Setups
	|--------------------------------------------------------------------------
	*/
	public $autoPurgeRedundantAttributes = true;
	public $autoHydrateEntityFromInput = true; // For new entries only
  	public $forceEntityHydrationFromInput = true; // Also for Update
	
    public static $rules;
	
	public static function setRules(){
		/*
    	$rules = array();
    	$rules['name'] = 'required';
        self::$rules = $rules;
		*/
    }
	
    public static $relationsData = array();
	
    public static function boot(){
        parent::boot();
        self::setRules();
    }
	
	/*
	|--------------------------------------------------------------------------
	| Methods
	|--------------------------------------------------------------------------
	*/
	
}
	