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
defined('_JEXEC') or die();
jimport( 'joomla.application.component.view');
class PhocaGalleryViewMap extends JView
{
	public 		$tmpl;
	protected	$params;
	
	function display($tpl = null) {
		$app	= JFactory::getApplication();
		
		// PLUGIN WINDOW - we get information from plugin
		$get		= '';
		$get['map']	= JRequest::getVar( 'map', '', 'get', 'string' );
		
		$document		= &JFactory::getDocument();		
		$this->params	= &$app->getParams();
		
		$this->tmpl['enablecustomcss']				= $this->params->get( 'enable_custom_css', 0);
		$this->tmpl['customcss']					= $this->params->get( 'custom_css', '');
		
		// CSS
		JHTML::stylesheet('components/com_phocagallery/assets/phocagallery.css' );
		if ($this->tmpl['enablecustomcss'] == 1) {
			JHTML::stylesheet('components/com_phocagallery/assets/phocagallerycustom.css' );
			PhocaGalleryRenderFront::displayCustomCSS($this->tmpl['customcss']);
		}
		
		// PARAMS - Open window parameters - modal popup box or standard popup window
		$this->tmpl['detailwindow'] = $this->params->get( 'detail_window', 0 );
		
		// Plugin information
		if (isset($get['map']) && $get['map'] != '') {
			$this->tmpl['detailwindow'] = $get['map'];
		}
		
		// Close and Reload links (for different window types)
		$close = PhocaGalleryRenderFront::renderCloseReloadDetail($this->tmpl['detailwindow']);
		$detail_window_close	= $close['detailwindowclose'];
		$detail_window_reload	= $close['detailwindowreload'];
		
		// PARAMS - Display Description in Detail window - set the font color
		$this->tmpl['detailwindow']			 	= $this->params->get( 'detail_window', 0 );
		$this->tmpl['detailwindowbackgroundcolor']= $this->params->get( 'detail_window_background_color', '#ffffff' );
		$this->tmpl['pgl'] 						= PhocaGalleryRenderInfo::getPhocaIc((int)$this->params->get( 'display_phoca_info', 1 ));
		$description_lightbox_font_color 	= $this->params->get( 'description_lightbox_font_color', '#ffffff' );
		$description_lightbox_bg_color 		= $this->params->get( 'description_lightbox_bg_color', '#000000' );
		$description_lightbox_font_size 	= $this->params->get( 'description_lightbox_font_size', 12 );
		$this->tmpl['gallerymetakey'] 		= $this->params->get( 'gallery_metakey', '' );
		$this->tmpl['gallerymetadesc'] 		= $this->params->get( 'gallery_metadesc', '' );
		if ($this->tmpl['gallerymetakey'] != '') {
			$document->setMetaData('keywords', $this->tmpl['gallerymetakey']);
		}
		if ($this->tmpl['gallerymetadesc'] != '') {
			$document->setMetaData('description', $this->tmpl['gallerymetadesc']);
		}

		// NO SCROLLBAR IN DETAIL WINDOW
		if ($this->tmpl['detailwindow'] == 7) {
	
		} else {
			$document->addCustomTag( "<style type=\"text/css\"> \n" 
				." html,body, .contentpane{overflow:hidden;background:".$this->tmpl['detailwindowbackgroundcolor'].";} \n" 
				." center, table {background:".$this->tmpl['detailwindowbackgroundcolor'].";} \n" 
				." #sbox-window {background-color:#fff;padding:5px} \n" 
				." </style> \n");
		}
		
		// PARAMS - Get image height and width
		$this->tmpl['largemapwidth']		= (int)$this->params->get( 'front_modal_box_width', 680 ) - 20;
		$this->tmpl['largemapheight']		= (int)$this->params->get( 'front_modal_box_height', 560 ) - 20;
	//	$this->tmpl['googlemapsapikey']	= $this->params->get( 'google_maps_api_key', '' );
			
		// MODEL
		$model	= &$this->getModel();
		$map	= $model->getData();

		phocagalleryimport('phocagallery.image.imagefront');
		if (!empty($map)) {
			if (isset($map->filename) && $map->filename != '') {
				$file_thumbnail = PhocaGalleryImageFront::displayCategoryImageOrNoImage($map->filename, 'small');
				$map->thumbnail = $file_thumbnail;
			} else {
				$map->thumbnail = '';
			}
			
			if (isset($map->latitude) && $map->latitude != '' && $map->latitude != 0
				&& isset($map->longitude) && $map->longitude != '' && $map->longitude != 0 ) {
				
			} else {
				$map->longitude	= '';
				$map->latitude	= '';
				$map->zoom		= 2;
				$map->geotitle	= '';
			}
		}
			
		// Second try to get category data
		if ((empty($map)) || ($map->longitude == '' && $map->latitude	== '' && $map->geotitle == '')) {
			
			$map	= $model->getDataCategory();
			
			if (!empty($map)) {
			
				if (isset($map->latitude) && $map->latitude != '' && $map->latitude != 0
					&& isset($map->longitude) && $map->longitude != '' && $map->longitude != 0 ) {
					$map->thumbnail = '';
					if ($map->geotitle == '') {
						$map->geotitle = $map->title;
					}
					
				} else {
					$map->longitude	= '';
					$map->latitude	= '';
					$map->zoom		= 2;
					$map->geotitle	= '';
				}
			} else {
				$map->longitude	= '';
				$map->latitude	= '';
				$map->zoom		= 2;
				$map->geotitle	= '';
				$map->catslug	= '';
			}
		}
		
		
		// Back button
		$this->tmpl['backbutton'] = '';
		if ($this->tmpl['detailwindow'] == 7) {
			phocagalleryimport('phocagallery.image.image');
			$formatIcon = &PhocaGalleryImage::getFormatIcon();
			$this->tmpl['backbutton'] = '<div><a href="'.JRoute::_('index.php?option=com_phocagallery&view=category&id='. $map->catslug.'&Itemid='. JRequest::getVar('Itemid', 0, '', 'int')).'"'
				.' title="'.JText::_( 'COM_PHOCAGALLERY_BACK_TO_CATEGORY' ).'">'
				. JHTML::_('image', 'components/com_phocagallery/assets/images/icon-up-images.' . $formatIcon, JText::_( 'COM_PHOCAGALLERY_BACK_TO_CATEGORY' )).'</a></div>';
		}
	
		// ASIGN
		$this->assignRef( 'tmpl', $this->tmpl );
		$this->assignRef( 'map', $map );
		$this->_prepareDocument($map);
		parent::display($tpl);
	}
	
	protected function _prepareDocument($item) {
		
		$app			= JFactory::getApplication();
		$menus			= $app->getMenu();
		$pathway 		= $app->getPathway();
		$this->params	= &$app->getParams();
		$title 			= null;
		
		$this->tmpl['gallerymetakey'] 		= $this->params->get( 'gallery_metakey', '' );
		$this->tmpl['gallerymetadesc'] 		= $this->params->get( 'gallery_metadesc', '' );
		

		$menu = $menus->getActive();
		if ($menu) {
			$this->params->def('page_heading', $this->params->get('page_title', $menu->title));
		} else {
			$this->params->def('page_heading', JText::_('JGLOBAL_ARTICLES'));
		}

		$title = $this->params->get('page_title', '');
		if (empty($title)) {
			$title = htmlspecialchars_decode($app->getCfg('sitename'));
		} else if ($app->getCfg('sitename_pagetitles', 0)) {
			$title = JText::sprintf('JPAGETITLE', htmlspecialchars_decode($app->getCfg('sitename')), $title);
		}
		$this->document->setTitle($title);

		if (empty($title)) {
			$title = $this->item->title;
		}
		$this->document->setTitle($title);
	/*	
		if ($item->metadesc != '') {
			$this->document->setDescription($item->metadesc);
		} else */ if ($this->tmpl['gallerymetadesc'] != '') {
			$this->document->setDescription($this->tmpl['gallerymetadesc']);
		} else if ($this->params->get('menu-meta_description', '')) {
			$this->document->setDescription($this->params->get('menu-meta_description', ''));
		} 
/*
		if ($item->metakey != '') {
			$this->document->setMetadata('keywords', $item->metakey);
		} else*/ if ($this->tmpl['gallerymetakey'] != '') {
			$this->document->setMetadata('keywords', $this->tmpl['gallerymetakey']);
		} else if ($this->params->get('menu-meta_keywords', '')) {
			$this->document->setMetadata('keywords', $this->params->get('menu-meta_keywords', ''));
		}

		if ($app->getCfg('MetaTitle') == '1' && $this->params->get('menupage_title', '')) {
			$this->document->setMetaData('title', $this->params->get('page_title', ''));
		}

		/*if ($app->getCfg('MetaAuthor') == '1') {
			$this->document->setMetaData('author', $this->item->author);
		}

		/*$mdata = $this->item->metadata->toArray();
		foreach ($mdata as $k => $v) {
			if ($v) {
				$this->document->setMetadata($k, $v);
			}
		}*/
		
		// Breadcrumbs TODO (Add the whole tree)
		/*if (isset($this->category[0]->parentid)) {
			if ($this->category[0]->parentid == 1) {
			} else if ($this->category[0]->parentid > 0) {
				$pathway->addItem($this->category[0]->parenttitle, JRoute::_(PhocaDocumentationHelperRoute::getCategoryRoute($this->category[0]->parentid, $this->category[0]->parentalias)));
			}
		}

		if (!empty($this->category[0]->title)) {
			$pathway->addItem($this->category[0]->title);
		}*/
	}
}
?>