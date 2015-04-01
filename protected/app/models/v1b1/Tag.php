<?php
namespace models\v1b1;
use \DB;
use Illuminate\Database\Eloquent\SoftDeletingTrait;
use LaravelBook\Ardent\Ardent;
class Tag extends Ardent {
	/*
	|--------------------------------------------------------------------------
	| General Setups
	|--------------------------------------------------------------------------
	*/
	use SoftDeletingTrait;
    protected $dates = ['deleted_at'];
    protected $softDelete = true;
	protected $table = 'tags';			
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
	
   // public static $rules;
	
	public static function setRules(){
		/*
    	$rules = array();
    	$rules['name'] = 'required';
        self::$rules = $rules;
		*/
    }
	
    public static $relationsData = array(
		'image_tags'			=> array(self::BELONGS_TO_MANY, 'models\v1b1\Image', 'table' => 'image_tags')
	);
	
    public static function boot(){
       	//parent::boot();
        //self::setRules();
    }
	
	/*
	|--------------------------------------------------------------------------
	| Methods
	|--------------------------------------------------------------------------
	*/
	
	#create
	public static function insertOrGetTag($tag_name)
	{
		if($tag_name != '') {
			$tag_name = preg_replace('/[^A-Za-z0-9\-]/', '', $tag_name);	
			$tag = Tag::where(DB::raw('BINARY `name`'), $tag_name)->first();
			if(!$tag) {
				$tag = new Tag;
				$tag->name = $tag_name;
				$tag->save();
			}
			return $tag;
		}
	}
	
}
	