<?php
class Embed{
	const FOLDER_PATH = 'img/image';
	public static function original($file_name){
		$path = self::FOLDER_PATH.'/'.$file_name;
		$path = self::validatePath($path);
		
		$imageInfo = getimagesize($path);
		$mime = $imageInfo['mime'];
		
     	self::setHeader($file_name, $mime);
		echo file_get_contents($path);
	}
	
	public static function resizeImage($newsize, $file_name, $byHeight=false){
		$path = self::FOLDER_PATH.'/'.$file_name;
		$path = self::validatePath($path);
		
		$imageInfo = getimagesize($path);
		$mime = $imageInfo['mime'];
		$ratio = $imageInfo[0]/$imageInfo[1];
		
		if($byHeight){
			if($ratio > 1){
				$width = $newsize;
				$height = $newsize/$ratio;
			}else{
				$width = $newsize * $ratio;
				$height = $newsize;
			}
		}else{
			if($ratio > 1){
				$width = $newsize*$ratio;
				$height = $newsize;
			}else{
				$width = $newsize;
				$height = $newsize / $ratio;
			}
		}
		
		$resized_image = imagecreatetruecolor($width,$height);
		if($mime == 'image/png'){
			imagealphablending( $resized_image, false );
			imagesavealpha( $resized_image, true );
		}
		
		$image = self::createImage($path, $mime);
		imagecopyresampled($resized_image,$image,0,0,0,0,$width,$height,$imageInfo[0],$imageInfo[1]);
		
     	self::setHeader($file_name, $mime);
		self::imageOutput($resized_image, $mime);
	}
	public static function cropImage($w, $h, $file_name){
		$path = self::FOLDER_PATH.'/'.$file_name;
		$path = self::validatePath($path);
		
		$imageInfo = getimagesize($path);
		$width = $imageInfo[0];
		$height = $imageInfo[1];
		$mime = $imageInfo['mime'];
		
		$dst_img = imagecreatetruecolor($w, $h);
		if($mime == 'image/png'){
			imagealphablending( $dst_img, false );
			imagesavealpha( $dst_img, true );
		}
		
		$src_img = self::createImage($path, $mime);
		 
		$width_new = $height * $w / $h;
		$height_new = $width * $h / $w;
		
		
		if($width_new > $width){
			$h_point = (($height - $height_new) / 2);
			imagecopyresampled($dst_img, $src_img, 0, 0, 0, $h_point, $w, $h, $width, $height_new);
		}else{
			$w_point = (($width - $width_new) / 2);
			imagecopyresampled($dst_img, $src_img, 0, 0, $w_point, 0, $w, $h, $width_new, $height);
		}
		
     	self::setHeader($file_name, $mime);
		self::imageOutput($dst_img, $mime);
	}
	
	#utillities
	private static function validatePath($image_url){
		if(!File::exists($image_url)){
			$image_url = 'img/stock/web/v1b1/image_not_found.png';
		}
		return $image_url;
	}
	private static function createImage($path, $mime){
		if($mime == 'image/jpeg'){
			$image = imagecreatefromjpeg($path);
		}elseif($mime == 'image/png'){
			$image = imagecreatefrompng($path);
		}elseif($mime == 'image/gif'){
			$image = imagecreatefromgif($path);
		}else{
			dd($mime.' not supported');	
		}
		return $image;
	}
	private static function imageOutput($file, $mime){
		
		if($mime == 'image/jpeg'){
			imagejpeg($file, null, 100);
		}elseif($mime == 'image/png'){
			imagepng($file, null, 0);
		}elseif($mime == 'image/gif'){
			imagegif($file, null, 100);
		}
		imagedestroy($file);
	}
	
	private static function setHeader($file_name, $mime){
		$etag = '"'. md5($file_name) .'"';
		if(isset($_SERVER['HTTP_IF_NONE_MATCH'])){
			if($_SERVER['HTTP_IF_NONE_MATCH'] == $etag){
				header('HTTP/1.1 304 Not Modified');
				header('Content-Length: 0');
				exit;
			}
		}
		$expiry = 604800; // (60*60*24*7)
		header('ETag: '. $etag);
		header('Last-Modified: '. gmdate('D, d M Y H:i:s', time()) .' GMT');
		header('Expires:'.        gmdate('D, d M Y H:i:s', time() + $expiry) .' GMT');
		header('Content-type: '.$mime);
	}
	
}