<?php defined('_JEXEC') or die('Restricted access');

$title			= $this->item->filename;
$imgLink		= JHTML::_( 'image.site', $this->item->filenameno, 'images/phocagallery/');

$extImage = PhocaGalleryImage::isExtImage($this->item->extid);
if ($extImage) {
	$title		= $this->item->title;
	$imgLink	= JHTML::_( 'image', $this->item->exto, '');
}

if ($this->tmpl['backbutton'] != '') {
	echo $this->tmpl['backbutton'];

	echo '<div id="download-box"><div style="overflow:scroll;width:'.$this->tmpl['boxlargewidth'].'px;height:'.$this->tmpl['boxlargeheight'].'px;margin:0px;padding:0px;">' . $imgLink . '</div>';
	echo '<div id="download-msg-nopopup"><div>'
		.'<table width="360">'
		.'<tr><td align="left">' . JText::_('COM_PHOCAGALLERY_IMAGE_NAME') . ': </td><td>'.$title.'</td></tr>'
		.'<tr><td align="left">' . JText::_('COM_PHOCAGALLERY_IMAGE_FORMAT') . ': </td><td>'.$this->item->imagesize.'</td></tr>'
		.'<tr><td align="left">' . JText::_('COM_PHOCAGALLERY_IMAGE_SIZE') . ': </td><td>'.$this->item->filesize.'</td></tr>';
				
	echo '<tr><td align="left"><a title="'. JText::_('COM_PHOCAGALLERY_IMAGE_DOWNLOAD').'" href="'. JRoute::_('index.php?option=com_phocagallery&view=detail&catid='.$this->item->catslug.'&id='.$this->item->slug.'&phocadownload=2'.'&Itemid='. JRequest::getVar('Itemid', 0, '', 'int') ).'">'.JText::_('COM_PHOCAGALLERY_IMAGE_DOWNLOAD').'</a></td><td>&nbsp;</td>';

	echo '</table>';
	echo '</div></div>';
	
	
} else {

	echo '<div id="download-box"><div style="overflow:scroll;width:'.$this->tmpl['boxlargewidth'].'px;height:'.$this->tmpl['boxlargeheight'].'px;margin:0px;padding:0px;">' . $imgLink. '</div>';
	echo '<div id="download-msg"><div>'
		.'<table width="360">'
		.'<tr><td align="left">' . JText::_('COM_PHOCAGALLERY_IMAGE_NAME') . ': </td><td>'.$title.'</td></tr>'
		.'<tr><td align="left">' . JText::_('COM_PHOCAGALLERY_IMAGE_FORMAT') . ': </td><td>'.$this->item->imagesize.'</td></tr>'
		.'<tr><td align="left">' . JText::_('COM_PHOCAGALLERY_IMAGE_SIZE') . ': </td><td>'.$this->item->filesize.'</td></tr>'
		.'<tr><td colspan="2" align="left"><small>' . JText::_('COM_PHOCAGALLERY_DOWNLOAD_IMAGE') . '</small></td></tr>';
		
		if ($this->tmpl['detailwindow'] == 4 || $this->tmpl['detailwindow'] == 5 || $this->tmpl['detailwindow'] == 7 || $this->tmpl['detailwindow'] == 9 || $this->tmpl['detailwindow'] == 10) {
		} else {
			echo '<tr><td>&nbsp;</td><td align="right">'.str_replace("%onclickclose%", $this->tmpl['detailwindowclose'], $this->item->closetext).'</td></tr>';
		}
	echo '</table>';
	echo '</div></div>';
}
echo '<div id="phocaGallerySlideshowC" style="display:none"></div>';//because of loaded slideshow js
if ($this->tmpl['detailwindow'] == 7) {
	PhocaGalleryUtils::footer();
}
?>