<?php
namespace models\v1b1;
use \DB;
use Illuminate\Database\Eloquent\SoftDeletingTrait;
use LaravelBook\Ardent\Ardent;
class ImageLike extends Ardent {
	/*
	|--------------------------------------------------------------------------
	| General Setups
	|--------------------------------------------------------------------------
	*/
	use SoftDeletingTrait;
    protected $dates = ['deleted_at'];
    protected $softDelete = true;
	protected $table = 'image_likes';			
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
	
	#retrieve
	public static function getImageLikes($image_id){
		$result = Image::whereHas('image_likes', function($q) use($image_id){
			$q->where('image_id', $image_id);
		})->paginate(15);
		return $result;
	}
	
	public static function isLiked($image_id, $user_id){
		$isLiked = false;
		$isLiked = ImageLike::where('image_id', $image_id)
			->where('user_id', $user_id)
			->exists();
		return $isLiked;
	}
	
	#create
	public static function like($image, $user_id)
	{
		if($image) {
			self::unlike($image, $user_id);
			$image->image_likes()->attach($user_id);
		}
		
		return $image;
	}
	public static function unlike($image, $user_id)
	{
		if($image) {
			$image->image_likes()->detach($user_id);
		}
		
		return $image;
	}
	
}
	