<?php
/*
 * @package		Joomla.Framework
 * @copyright	Copyright (C) 2005 - 2010 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 *
 * @component Phoca Component
 * @copyright Copyright (C) Jan Pavelka www.phoca.cz
 * @license http://www.gnu.org/copyleft/gpl.html GNU General Public License version 2 or later;
 */
defined('_JEXEC') or die;

class PhocaGalleryYoutube
{
	public function displayVideo($videoCode) {
	
		$o = '';
		if ($videoCode != '' && PhocaGalleryUtils::isURLAddress($videoCode) ) {
			
			$shortvideoCode	= 'http://youtu.be/';
			$pos 		= strpos($videoCode, $shortvideoCode);
			if ($pos !== false) {
				$code 		= str_replace($shortvideoCode, '', $videoCode);
			} else {
				$codeArray 	= explode('=', $videoCode);
				$code 		= str_replace($codeArray[0].'=', '', $videoCode);
			}
			
			$youtubeheight	= PhocaGallerySettings::getAdvancedSettings('youtubeheight');
			$youtubewidth	= PhocaGallerySettings::getAdvancedSettings('youtubewidth');

			$o .= '<object height="'.(int)$youtubeheight.'" width="'.(int)$youtubewidth.'">'
			.'<param name="movie" value="http://www.youtube.com/v/'.$code.'"></param>'
			.'<param name="allowFullScreen" value="true"></param>'
			.'<param name="allowscriptaccess" value="always"></param>'
			.'<embed src="http://www.youtube.com/v/'.$code.'" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" height="'.(int)$youtubeheight.'" width="'.(int)$youtubewidth.'"></embed></object>';
		}
		
		if ($o != '') {
			return $o;
		} 
		
		return $videoCode;
	}
	
	public function getCode($url) {
	
		$o = '';
		if ($url != '' && PhocaGalleryUtils::isURLAddress($url) ) {
			$shortvideoCode	= 'http://youtu.be/';
			$pos 		= strpos($url, $shortvideoCode);
			if ($pos !== false) {
				$code 		= str_replace($shortvideoCode, '', $url);
			} else {
				$codeArray 	= explode('=', $url);
				$code 		= str_replace($codeArray[0].'=', '', $url);
			}
			return $code;
		}
		return $o;
	}
}