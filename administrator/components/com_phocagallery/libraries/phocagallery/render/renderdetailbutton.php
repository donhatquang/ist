<?php
/*
 * @package Joomla 1.5
 * @copyright Copyright (C) 2005 Open Source Matters. All rights reserved.
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL, see LICENSE.php
 *
 * @component Phoca Gallery
 * @copyright Copyright (C) Jan Pavelka www.phoca.cz
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL
 */
defined( '_JEXEC' ) or die( 'Restricted access' );

class PhocaGalleryRenderDetailButton
{
	protected $_formaticon		= null;
	protected $_imgordering		= array();
	
	function __construct() {
		$this->_setFormatIcon();
		$this->_setImageOrdering();
	}
	

	function _setFormatIcon() {
		
		if (empty($this->_formaticon)) {
			phocagalleryimport('phocagallery.image.image');
			$this->_formaticon = PhocaGalleryImage::getFormatIcon();
		}
		return true;
		
	}
	function _setImageOrdering() {
		
		if (empty($this->_imgordering)) {
			$app				= JFactory::getApplication();
			$paramsC 			= JComponentHelper::getParams('com_phocagallery') ;
			$image_ordering		= $paramsC->get( 'image_ordering', 1 );
			$this->_imgordering = PhocaGalleryOrdering::getOrderingString($app->getUserStateFromRequest('com_phocagallery.category.' .'imgordering', 'imgordering', $image_ordering, 'int'));
		}
		return true;
		
	}
	
	/*
	* Get the next button in Gallery - in opened window
	*/
	function getNext ($catid, $id, $ordering)  {
	
		$app			= JFactory::getApplication();
		$db 			= JFactory::getDBO();
		$paramsC 		= JComponentHelper::getParams('com_phocagallery') ;
		$detailWindow	= $paramsC->get( 'detail_window', 0 );
		
		if ($detailWindow == 7) {
			$tmplCom = '';
		} else {
			$tmplCom = '&tmpl=component';
		}
		
		$c 	= $this->_imgordering['column'];
		$s 	= $this->_imgordering['sort'];
		$sP	= ($s == 'DESC') ? '<' : '>';
		$sR	= ($s == 'ASC') ? 'DESC' : 'ASC';
		//Select all ids from db_gallery - we search for next_id (!!! next_id can be id without file
		//in the server. If the next id has no file in the server we must go from next_id to next next_id
		if ($c == 'count' || $c == 'average') {
		
			$query = 'SELECT a.id, a.filename as filename, b.id AS currentid,'
			.' CASE WHEN CHAR_LENGTH(c.alias) THEN CONCAT_WS(\':\', c.id, c.alias) ELSE c.id END as catslug,'
			.' CASE WHEN CHAR_LENGTH(a.alias) THEN CONCAT_WS(\':\', a.id, a.alias) ELSE a.id END as slug'
			.' FROM #__phocagallery AS a'
			.' LEFT JOIN #__phocagallery_img_votes_statistics AS ra ON ra.imgid = a.id,'
			.' #__phocagallery AS b'
			.' LEFT JOIN #__phocagallery_categories AS c ON c.id = b.catid'
			.' LEFT JOIN #__phocagallery_img_votes_statistics AS rb ON rb.imgid = b.id'
			.' WHERE a.catid = ' . (int)$catid
			.' AND b.id = ' . (int)$id
			.' AND ('
			.' (ra.'.$c.' = rb.'.$c.' AND a.id '.$sP.' b.id) OR '
			.' (CASE WHEN ra.'.$c.' IS NOT NULL AND rb.'.$c.' IS NOT NULL THEN ra.'.$c.' '.$sP.' rb.'.$c.' END) OR '
			.' (CASE WHEN ra.'.$c.' IS NULL AND rb.'.$c.' IS NOT NULL THEN 0 '.$sP.' rb.'.$c.' END) OR '
			.' (CASE WHEN ra.'.$c.' IS NOT NULL AND rb.'.$c.' IS NULL THEN ra.'.$c.' '.$sP.' 0 END) OR '
			.' (CASE WHEN ra.'.$c.' IS NULL AND rb.'.$c.' IS NULL THEN a.id '.$sP.' b.id END) '
			.')'
			.' AND a.published = 1'
			.' ORDER BY ra.'.$c.' '.$s.', a.id '.$s;
		} else {
			$query = 'SELECT a.id, a.filename as filename, b.id AS currentid,'
			.' CASE WHEN CHAR_LENGTH(c.alias) THEN CONCAT_WS(\':\', c.id, c.alias) ELSE c.id END as catslug,'
			.' CASE WHEN CHAR_LENGTH(a.alias) THEN CONCAT_WS(\':\', a.id, a.alias) ELSE a.id END as slug'
			.' FROM #__phocagallery AS a,'
			.' #__phocagallery AS b'
			.' LEFT JOIN #__phocagallery_categories AS c ON c.id = b.catid'
			.' WHERE a.catid = ' . (int)$catid
			.' AND b.id = ' . (int)$id
			.' AND (a.'.$c.' '.$sP.' b.'.$c.' OR (a.'.$c.' = b.'.$c.' and a.id '.$sP.' b.id))'
			.' AND a.published = 1'
			.' ORDER BY a.'.$c.' '.$s.', a.id '.$s;
		}
				
		$db->setQuery($query);
		$nextAll = $db->loadObjectList();
			
		$next = JHTML::_('image', 'components/com_phocagallery/assets/images/icon-next-grey.' . $this->_formaticon, JText::_( 'COM_PHOCAGALLERY_NEXT_IMAGE' ));//non-active button will be displayed as Default, we will see if we find active link
		foreach ($nextAll as $key => $value) {
			
			// Is there some next id, if not end this and return grey link
			if (isset($value->id) && $value->id > 0) {

				// onclick="disableBackAndNext()"
				$next = '<div class="pg-imgbgd">' // because of not conflict with beez
				.'<a href="'.JRoute::_('index.php?option=com_phocagallery&view=detail&catid='. $value->catslug.'&id='.$value->slug.$tmplCom.'&Itemid='. JRequest::getVar('Itemid', 1, 'get', 'int')).'"'
				.' title="'.JText::_( 'COM_PHOCAGALLERY_NEXT_IMAGE' ).'" id="next" >'
				
				. JHTML::_('image', 'components/com_phocagallery/assets/images/icon-next.' . $this->_formaticon, JText::_( 'COM_PHOCAGALLERY_NEXT_IMAGE' )).'</a></div>';
				
				break;// end it, we must need not to find next ordering
				
			} else {
				$next = JHTML::_('image', 'components/com_phocagallery/assets/images/icon-next-grey.' . $this->_formaticon, JText::_( 'COM_PHOCAGALLERY_NEXT_IMAGE' ));
				break;// end it, we must need not to find next ordering
			}
		} 
		return $next;
	}
	
	  /*
	* Get the prev button in Gallery - in openwindow
	*/
	function getPrevious ($catid, $id, $ordering) {
	
		$app	= JFactory::getApplication();
		$db 			= &JFactory::getDBO();
		$params			= &$app->getParams();
		$detailWindow	= $params->get( 'detail_window', 0 );
		if ($detailWindow == 7) {
			$tmplCom = '';
		} else {
			$tmplCom = '&tmpl=component';
		}
		
		$c 	= $this->_imgordering['column'];
		$s 	= $this->_imgordering['sort'];
		$sP	= ($s == 'ASC') ? '<' : '>'; 
		$sR	= ($s == 'ASC') ? 'DESC' : 'ASC';
		//Select all ids from db_gallery - we search for next_id (!!! next_id can be id without file
		//in the server. If the next id has no file in the server we must go from next_id to next next_id
		if ($c == 'count' || $c == 'average') {
		
			$query = 'SELECT a.id, a.filename as filename, b.id AS currentid,'
			.' CASE WHEN CHAR_LENGTH(c.alias) THEN CONCAT_WS(\':\', c.id, c.alias) ELSE c.id END as catslug,'
			.' CASE WHEN CHAR_LENGTH(a.alias) THEN CONCAT_WS(\':\', a.id, a.alias) ELSE a.id END as slug'
			.' FROM #__phocagallery AS a'
			.' LEFT JOIN #__phocagallery_img_votes_statistics AS ra ON ra.imgid = a.id,'
			.' #__phocagallery AS b'
			.' LEFT JOIN #__phocagallery_categories AS c ON c.id = b.catid'
			.' LEFT JOIN #__phocagallery_img_votes_statistics AS rb ON rb.imgid = b.id'
			.' WHERE a.catid = ' . (int)$catid
			.' AND b.id = ' . (int)$id
			.' AND ('
			.' (ra.'.$c.' = rb.'.$c.' AND a.id '.$sP.' b.id) OR '
			.' (CASE WHEN ra.'.$c.' IS NOT NULL AND rb.'.$c.' IS NOT NULL THEN ra.'.$c.' '.$sP.' rb.'.$c.' END) OR '
			.' (CASE WHEN ra.'.$c.' IS NULL AND rb.'.$c.' IS NOT NULL THEN 0 '.$sP.' rb.'.$c.' END) OR '
			.' (CASE WHEN ra.'.$c.' IS NOT NULL AND rb.'.$c.' IS NULL THEN ra.'.$c.' '.$sP.' 0 END) OR '
			.' (CASE WHEN ra.'.$c.' IS NULL AND rb.'.$c.' IS NULL THEN a.id '.$sP.' b.id END) '
			.')'
			.' AND a.published = 1'
			.' ORDER BY ra.'.$c.' '.$sR.', a.id '.$sR;
		} else {
			$query = 'SELECT a.id, a.filename as filename, b.id AS currentid,'
			.' CASE WHEN CHAR_LENGTH(c.alias) THEN CONCAT_WS(\':\', c.id, c.alias) ELSE c.id END as catslug,'
			.' CASE WHEN CHAR_LENGTH(a.alias) THEN CONCAT_WS(\':\', a.id, a.alias) ELSE a.id END as slug'
			.' FROM #__phocagallery AS a,'
			.' #__phocagallery AS b'
			.' LEFT JOIN #__phocagallery_categories AS c ON c.id = b.catid'
			.' WHERE a.catid = ' . (int)$catid
			.' AND b.id = ' . (int)$id
			.' AND (a.'.$c.' '.$sP.' b.'.$c.' OR (a.'.$c.' = b.'.$c.' and a.id '.$sP.' b.id))'
			.' AND a.published = 1'
			.' ORDER BY a.'.$c.' '.$sR.', a.id '.$sR;
		}
		
		$db->setQuery($query);
		$prevAll = $db->loadObjectList();
	
		$prev = JHTML::_('image', 'components/com_phocagallery/assets/images/icon-prev-grey.' . $this->_formaticon, JText::_( 'COM_PHOCAGALLERY_PREV_IMAGE' ));//non-active button will be displayed as Default, we will see if we find active link
		foreach ($prevAll as $key => $value) {
			
			// Is there some next id, if not end this and return grey link
			if (isset($value->id) && $value->id > 0) {
				
				//onclick="disableBackAndPrev()"
				$prev = '<div class="pg-imgbgd">' // because of not conflict with beez 
				.'<a href="'.JRoute::_('index.php?option=com_phocagallery&view=detail&catid='. $value->catslug.'&id='.$value->slug.$tmplCom.'&Itemid='. JRequest::getVar('Itemid', 1, 'get', 'int')).'"'
				.' title="'.JText::_( 'COM_PHOCAGALLERY_PREV_IMAGE' ).'" id="prev" >'
				.JHTML::_('image', 'components/com_phocagallery/assets/images/icon-prev.' . $this->_formaticon, JText::_( 'COM_PHOCAGALLERY_PREV_IMAGE' )).'</a></div>';
				break;// end it, we must need not to find next ordering
				
			} else {
				$prev = JHTML::_('image', 'components/com_phocagallery/assets/images/icon-next-grey.' . $this->_formaticon, JText::_( 'COM_PHOCAGALLERY_NEXT_IMAGE' ));
				break;// end it, we must need not to find next ordering
			}
		} 
		return $prev;
	}
	
	function getReload($catidSlug, $idSlug) {
		
		$app	= JFactory::getApplication();
		$params			= &$app->getParams();
		$detailWindow	= $params->get( 'detail_window', 0 );
		if ($detailWindow == 7) {
			$tmplCom = '';
		} else {
			$tmplCom = '&tmpl=component';
		}
		
		$reload =  '<div class="pg-imgbgd"><a href="'.JRoute::_('index.php?option=com_phocagallery&view=detail&catid='.$catidSlug.'&id='.$idSlug.$tmplCom.'&Itemid='. JRequest::getVar('Itemid', 1, 'get', 'int')).'" onclick="%onclickreload%" title="'.JText::_( 'COM_PHOCAGALLERY_REFRESH' ).'" >'.JHTML::_('image', 'components/com_phocagallery/assets/images/icon-reload.' . $this->_formaticon, JText::_( 'COM_PHOCAGALLERY_REFRESH' )).'</a></div>';
			
		return $reload;
	}
	
	function getClose($catidSlug, $idSlug) {
		$app	= JFactory::getApplication();
		$params			= &$app->getParams();
		$detailWindow	= $params->get( 'detail_window', 0 );
		
		if ($detailWindow == 7 ) {
			return '';
		}
		
		$onclick = 'onclick="%onclickclose%"';
		if ($detailWindow == 9 || $detailWindow == 10) {
			//$onclick = 'onclick="window.parent.pgcbp.close();"';
			return '';// Will be set in boxplus javascript
		}
		$close =  '<div class="pg-imgbgd"><a href="'.JRoute::_('index.php?option=com_phocagallery&view=detail&catid='.$catidSlug.'&id='.$idSlug.'&tmpl=component'.'&Itemid='. JRequest::getVar('Itemid', 1, 'get', 'int')).'" '.$onclick.' title="'.JText::_( 'COM_PHOCAGALLERY_CLOSE_WINDOW').'" >'. JHTML::_('image', 'components/com_phocagallery/assets/images/icon-exit.' . $this->_formaticon, JText::_( 'COM_PHOCAGALLERY_CLOSE_WINDOW' )).'</a></div>';

		
		return $close;
	}
	
	function getCloseText($catidSlug, $idSlug) {
		$app	= JFactory::getApplication();
		$params			= &$app->getParams();
		$detailWindow	= $params->get( 'detail_window', 0 );
		if ($detailWindow == 7) {
			return '';
		}
		
		$onclick = 'onclick="%onclickclose%"';
		if ($detailWindow == 9 || $detailWindow == 10) {
			//$onclick = 'onclick="window.parent.pgcbpi.close();"';
			return '';// Will be set in boxplus javascript
		}
		
		$close =  '<a style="text-decoration:underline" href="'.JRoute::_('index.php?option=com_phocagallery&view=detail&catid='.$catidSlug.'&id='.$idSlug.'&tmpl=component'.'&Itemid='. JRequest::getVar('Itemid', 1, 'get', 'int')).'" '.$onclick.' title="'.JText::_( 'COM_PHOCAGALLERY_CLOSE_WINDOW').'" >'. JText::_( 'COM_PHOCAGALLERY_CLOSE_WINDOW' ).'</a>';
		
		return $close;
	}
	
	/*
	* Get Slideshow  - 1. data for javascript, 2. data for displaying buttons
	*/
	function getJsSlideshow($catid, $id, $slideshow = 0, $catidSlug, $idSlug) {
		
		jimport('joomla.filesystem.file');
		phocagalleryimport('phocagallery.file.filethumbnail');
		$app	= JFactory::getApplication();
		$db 				= &JFactory::getDBO();
		$params				= &$app->getParams();
		//$image_ordering		= $params->get( 'image_ordering', 1 );
		//$imageOrdering 		= PhocaGalleryOrdering::getOrderingString($image_ordering);
		$detailWindow		= $params->get( 'detail_window', 0 );
		if ($detailWindow == 7) {
			$tmplCom = '';
		} else {
			$tmplCom = '&tmpl=component';
		}
		
		// 1. GET DATA FOR JAVASCRIPT
		$jsSlideshowData['files'] = '';
		
		//Get filename of all photos
		
		
		
		$query = 'SELECT a.id, a.filename, a.extl, a.description' 
		.' FROM #__phocagallery AS a'
		.' LEFT JOIN #__phocagallery_img_votes_statistics AS r ON r.imgid = a.id'
		.' WHERE a.catid='.(int) $catid
		.' AND a.published = 1 AND a.approved = 1'
		. $this->_imgordering['output'];

		$db->setQuery($query);
		$filenameAll = $db->loadObjectList();
		$countImg 	= 0;
		$endComma	= ',';
		if (!empty($filenameAll)) {
			
			$countFilename = count($filenameAll);
			foreach ($filenameAll as $key => $value) {

				$countImg++;
				if ($countImg == $countFilename) {
					$endComma = '';
				}
				$description = PhocaGalleryText::strTrimAll(addslashes( $value->description ));
				if (isset($value->extl) && $value->extl != '') {
					$jsSlideshowData['files'] .= '["'. $value->extl .'", "", "", "'.$description.'"]'.$endComma."\n"; 
				} else {
					$fileThumbnail 	= PhocaGalleryFileThumbnail::getThumbnailName($value->filename, 'large');
					$imgLink		= JURI::base(true) . '/' . $fileThumbnail->rel;
					if (JFile::exists($fileThumbnail->abs)) {
						$jsSlideshowData['files'] .= '["'. $imgLink .'", "", "", "'.$description.'"]'.$endComma."\n"; ; 
					} else {
						$fileThumbnail = JURI::base(true).'/' . "components/com_phocagallery/assets/images/phoca_thumb_l_no_image." . $this->_formaticon;
						$jsSlideshowData['files'] .= '["'.$fileThumbnail.'", "", "", ""]'.$endComma."\n";
					}
				}
				
				
				
			}
		}
	
		// 2. GET DATA FOR DISPLAYING SLIDESHOW BUTTONS
		//We can display slideshow option if there is more than one foto
		//But in database there can be more photos - more rows but if file is in db but it doesn't exist, we don't count it
		//$countImg = SQLQuery::selectOne($mdb2, "SELECT COUNT(*) FROM $db_gallery WHERE siteid=$id");
		if ($countImg > 1) {
			//Data from GET['COM_PHOCAGALLERY_SLIDESHOW']
			if ($slideshow==1) {
				
				$jsSlideshowData['icons'] = '<div class="pg-imgbgd">' // because of not conflict with beez
				.'<a href="'.JRoute::_('index.php?option=com_phocagallery&view=detail&catid='.$catidSlug.'&id='.$idSlug.$tmplCom.'&phocaslideshow=0'.'&Itemid='. JRequest::getVar('Itemid', 1, 'get', 'int')).'" title="'.JText::_( 'COM_PHOCAGALLERY_STOP_SLIDESHOW' ).'" >'
				
				.JHTML::_('image', 'components/com_phocagallery/assets/images/icon-stop.' . $this->_formaticon, JText::_( 'COM_PHOCAGALLERY_STOP_SLIDESHOW' )).'</a></div>'
				
				.'</td><td align="center">'//.'&nbsp;'
				.JHTML::_('image', 'components/com_phocagallery/assets/images/icon-play-grey.' . $this->_formaticon, JText::_( 'COM_PHOCAGALLERY_START_SLIDESHOW' ));
			} else {
				$jsSlideshowData['icons'] = JHTML::_('image', 'components/com_phocagallery/assets/images/icon-stop-grey.' . $this->_formaticon, JText::_( 'COM_PHOCAGALLERY_STOP_SLIDESHOW' ))
				.'</td><td align="center">'//.'&nbsp;'
				.'<div class="pg-imgbgd">' // because of not conflict with beez
				.'<a href="'.JRoute::_('index.php?option=com_phocagallery&view=detail&catid='.$catidSlug.'&id='.$idSlug.'&phocaslideshow=1'.$tmplCom.'&Itemid='. JRequest::getVar('Itemid', 1, 'get', 'int')).'" title="'.JText::_( 'COM_PHOCAGALLERY_START_SLIDESHOW' ).'">'
				
				. JHTML::_('image', 'components/com_phocagallery/assets/images/icon-play.' . $this->_formaticon, JText::_( 'COM_PHOCAGALLERY_START_SLIDESHOW' )).'</a></div>';
			}
		} else {
			$jsSlideshowData['icons'] = '';
		}
		
		return $jsSlideshowData;//files (javascript) and icons (buttons)		
	}
		
}
?>