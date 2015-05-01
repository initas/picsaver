<?php
namespace models\v1b1;
use \DB;

use Illuminate\Database\Eloquent\SoftDeletingTrait;
use LaravelBook\Ardent\Ardent;
class ImageTag extends Ardent {
	/*
	|--------------------------------------------------------------------------
	| General Setups
	|--------------------------------------------------------------------------
	*/
	use SoftDeletingTrait;
    protected $dates = ['deleted_at'];
    protected $softDelete = true;
	protected $table = 'image_tags';			
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
	public $autoHydrateEntityFromInput = true;
  	public $forceEntityHydrationFromInput = true;
	
    public static $relationsData = array(
    	'image'	=> array(self::BELONGS_TO, 'model\v1b1\Image'),
		'tag' => array(self::BELONGS_TO, 'models\v1b1\Tag')
	);
	
    public static function boot(){
        parent::boot();
    }
	
	/*
	|--------------------------------------------------------------------------
	| Methods
	|--------------------------------------------------------------------------
	*/
	
	#retrieve
	public static function getImageTags($image_id){
		$tag = Tag::whereHas('image_tags', function($q) use($image_id){
			$q->where('image_id', $image_id);
		})->paginate(15);
		return $tag;
	}
	
	#insert
	public static function syncCardTags($image, $tag_names)
	{
		$tagIdToSync = array();
		foreach($tag_names as $tag_name)
		{
			$tag = Tag::insertOrGetTag($tag_name);
			if($tag)
			{
				$tagIdToSync[] = $tag->id;
			}
		}
		$image->image_tags()->sync($tagIdToSync);
	}
	
}
	