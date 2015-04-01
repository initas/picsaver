<?php
namespace models\v1b1;
use \DB;
use \Helper;

use Illuminate\Database\Eloquent\SoftDeletingTrait;
use LaravelBook\Ardent\Ardent;
class Album extends Ardent {
	/*
	|--------------------------------------------------------------------------
	| General Setups
	|--------------------------------------------------------------------------
	*/
	use SoftDeletingTrait;
    protected $dates = ['deleted_at'];
    protected $softDelete = true;
	protected $table = 'albums';			
    protected $fillable = array('');
	
	/*
	|--------------------------------------------------------------------------
	| Ardent Setups
	|--------------------------------------------------------------------------
	*/
	public $autoPurgeRedundantAttributes = true;
	public $autoHydrateEntityFromInput = true; // For new entries only
  	public $forceEntityHydrationFromInput = true; // Also for Update
	
	protected $appends = array(
		'detail'
	);
	
    public static $rules = array(
		'name' => 'required|max:255'
	);
	
    public static $relationsData = array();
	
	/*
	|--------------------------------------------------------------------------
	| Methods
	|--------------------------------------------------------------------------
	*/
	
	#retrieve
	public static function getAlbums(){
		$album = Album::paginate(15);
		return $album;
	}
	public static function getAlbum($album_id){
		$album = Album::find($album_id);
		return $album;
	}
	
	#create
	public static function insertAlbum($user_id){
		$album = new Album;
		$album->fillable = array('album_id', 'name', 'description');
		$album->user_id = $user_id;
		$album->save();
		return $album;
	}
	
	#update
	public static function updateAlbum($album){
		$album->fillable = array('name', 'description');
		$album->updateUniques();
		return $album;
	}
	
	#delete
	public static function deleteAlbum($album){
		$album->delete();
		return $album;
	}
	
	#append
	public function getDetailAttribute(){
		$album_id = $this->id;
		$user_id = $this->user_id;
		
		$detail['images_total'] = 0;
		$detail['images'] = null;
		$image = Image::getAlbumImages($album_id, 4);
		$response = Helper::getResults($image);
		if($response['status']==SUCCESS)
		{
			$detail['images_total'] = $response['results']['total'];
			$detail['images'] = $response['results']['data'];
		}
		
		return $detail;
	}
	
}
	