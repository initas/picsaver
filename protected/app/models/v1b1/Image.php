<?php
namespace models\v1b1;
use \DB;
use \File;
use \Helper;
use \URL;
use \Validator;

use Illuminate\Database\Eloquent\SoftDeletingTrait;
use LaravelBook\Ardent\Ardent;
class Image extends Ardent {
	/*
	|--------------------------------------------------------------------------
	| General Setups
	|--------------------------------------------------------------------------
	*/
	use SoftDeletingTrait;
    protected $dates = ['deleted_at'];
    protected $softDelete = true;
	protected $table = 'images';			
    protected $fillable = array('');
	const PER_PAGE = 30;
	const FOLDER_PATH = 'img/image';
	
	
	/*
	|--------------------------------------------------------------------------
	| Ardent Setups
	|--------------------------------------------------------------------------
	*/
	public $autoPurgeRedundantAttributes = true;
	public $autoHydrateEntityFromInput = true;
  	public $forceEntityHydrationFromInput = true;
	
	protected $appends = array(
		'logged_in_user',
		'detail'
	);
	
    public static $rules = array(
		'name' => 'max:255'
	);
	
	public static function validateImage($file)
    {
        $validator = Validator::make(
            array('image' => $file),
            array('image' => 'required|image|mimes:jpg,jpeg,png,bmp,gif')
        );
        return $validator;
    }
	
    public static $relationsData = array(
		'image_downloads'		=> array(self::BELONGS_TO_MANY, 'models\v1b1\User', 'table' => 'image_downloads'),
		'image_likes'			=> array(self::BELONGS_TO_MANY, 'models\v1b1\User', 'table' => 'image_likes'),
		'image_pins'			=> array(self::BELONGS_TO_MANY, 'models\v1b1\User', 'table' => 'image_pins'),
		'image_tags'			=> array(self::BELONGS_TO_MANY, 'models\v1b1\Tag', 'table' => 'image_tags')
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
	public static function searchImage($parameter){
		$find = $parameter['find'];
		$tag = ImageTag::with('tag')->get();
		$image = Image::where(function($image) use($find){
				//to search image name and tag name by 'find' sring
				$image->orWhere('name', 'like', '%'.$find.'%')
				->orWhereHas('image_tags', function($q) use($find){
					$q->where('tags.name', 'like', '%'.$find.'%');
				});
			})
			->paginate(15);
		return $image;
	}
	public static function getImage($image_id){
		$image = Image::find($image_id);
		return $image;
	}
	public static function getImages(){
		$image = Image::paginate(self::PER_PAGE);
		return $image;
	}
	public static function getAlbumImages($album_id, $max=null){
		$image = Image::where('album_id', $album_id);
		if($max){
			$image = $image->paginate($max);
		}else{
			$image = $image->paginate(self::PER_PAGE);
		}
		
		return $image;
	}
	public static function getMostViewedImages(){
		$image = Image::select(DB::raw('images.*, count(image_views.id) as total'))
        ->leftJoin('image_views', 'images.id', '=', 'image_views.image_id')
		->groupBy('images.id')
		->orderBy('total', 'desc')
        ->paginate(self::PER_PAGE);
		return $image;
	}
	public static function getMostDownloadedImages(){
		$image = Image::select(DB::raw('images.*, count(image_downloads.id) as total'))
        ->leftJoin('image_downloads', 'images.id', '=', 'image_downloads.image_id')
		->groupBy('images.id')
		->orderBy('total', 'desc')
        ->paginate(self::PER_PAGE);
		return $image;
	}
	public static function getMostLikedImages(){
		$image = Image::select(DB::raw('images.*, count(image_likes.id) as total'))
        ->leftJoin('image_likes', 'images.id', '=', 'image_likes.image_id')
		->groupBy('images.id')
		->orderBy('total', 'desc')
        ->paginate(self::PER_PAGE);
		return $image;
	}
	public static function getMostPinnedImages(){
		$image = Image::select(DB::raw('images.*, count(image_pins.id) as total'))
        ->leftJoin('image_pins', 'images.id', '=', 'image_pins.image_id')
		->groupBy('images.id')
		->orderBy('total', 'desc')
        ->paginate(self::PER_PAGE);
		return $image;
	}
	
	#create
	public static function insertImage($user_id){
		$image = new Image;
		$image->fillable = array('album_id', 'sign_number', 'name', 'description');
		$image->user_id = $user_id;
		$image->save();
		return $image;
	}
	
	#update
	public static function updateImage($image){
		$image->fillable = array('name', 'description');
		$image->updateUniques();
		return $image;
	}
	
	#delete
	public static function deleteImage($image){
		$image->delete();
		return $image;
	}
	
	#file
	public static function uploadImageFile($image, $file){
		$validator = Image::validateImage($file);
		if(!$validator->passes()){
			$image->status = VALIDATION_ERROR;
			$image->customErrors = $validator->errors();
		}else{
			
			$fileName = $file->getClientOriginalName();
			$fileSize = $file->getSize();
			$extension = $file->getClientOriginalExtension();
			$fileType = $file->getMimeType();
			$fileSrc = $file->getRealPath();
			
			if($fileType=='image/jpeg'){
				$exif_data = exif_read_data($fileSrc);
				if (!empty($exif_data['DateTimeOriginal'])) {
					$image->image_date_taken = $exif_data['DateTimeOriginal'];
					
				}
			}
			
			$image->image_name = $fileName;
			$image->image_size = $fileSize;
			$image->image_mime = $fileType;
			
			list($width, $height) = getimagesize($fileSrc); 
			$image->image_width = $width;
			$image->image_height = $height;
			
			$targetName = ($image->id).md5($fileName.$fileSize.$fileType.$fileSrc.time().rand()).'.'.$extension;
			$image->image_url = $targetName;
			
			if($file->move(self::FOLDER_PATH, $targetName)){
				$image->save();
			}
		}
		
		return $image;
	}
	public static function deleteImageFile($image_url){
		if(File::exists(self::FOLDER_PATH.'/'.$image_url)){
			File::delete(self::FOLDER_PATH.'/'.$image_url);
		}
	}
	
	#append
	public function getLoggedInUserAttribute(){
		$user = User::getUserLoginData();
		$user_id = $user->id;
		$image_id = $this->id;
		
		$logged_in_user['is_liked'] = ImageLike::isLiked($image_id, $user_id);
		$logged_in_user['is_pinned'] = ImagePin::isPinned($image_id, $user_id);

		return $logged_in_user;
	}
	public function getDetailAttribute(){
		$image_id = $this->id;
		$image_url = $this->image_url;
		$user_id = $this->user_id;
		
		$detail['total_tags'] = 0;
		$detail['tags'] = null;
		$tag = ImageTag::getImageTags($image_id);
		$response = Helper::getResults($tag);
		if($response['status']==SUCCESS)
		{
			$detail['total_tags'] = $response['results']['total'];
			$detail['tags'] = $response['results']['data'];
		}
		
		$detail['user'] = null;
		$user = User::find($user_id);
		$response = Helper::getResult($user);
		if($response['status']==SUCCESS)
		{
			$detail['user'] = $response['result'];
		}
		
		return $detail;
	}
}
	