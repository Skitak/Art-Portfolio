<?php

namespace App\Service;
use Gumlet\ImageResize;
// https://github.com/gumlet/php-image-resize

class ImageCompressor {

    private $thumbnailSize = 350;

    public function compressImage($source, $destination, $quality){
        $info = getimagesize($source);

		if ($info['mime'] == 'image/jpeg') 
			$image = imagecreatefromjpeg($source);

		elseif ($info['mime'] == 'image/gif') 
			$image = imagecreatefromgif($source);

		elseif ($info['mime'] == 'image/png') 
			$image = imagecreatefrompng($source);

		imagejpeg($image, $destination, $quality);

		return $destination;
    }

    public function resizeImage($filePath, $fileName){ 
        $image = new ImageResize($filePath . $fileName);
        $image->resizeToWidth(1600, true);
        $image->save($filePath . $fileName);
        return $filePath;
    }

    public function createThumbnail($filePath, $fileName){
        $image = new ImageResize($filePath . $fileName);
        $image->resizeToWidth(350);
        $generatedFileName = "min_" . $fileName;
        $image->save($filePath . $generatedFileName);
        return $generatedFileName;
        
    }

    public function resizeThumbnail($file){
        $image = new ImageResize($file);
        $image->resizeToWidth(350);
        $image->save($file);
    }
}