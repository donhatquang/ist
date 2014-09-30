<?php
/**
 * @version		$Id: mod_menu.php 19594 2010-11-20 05:06:08Z ian $
 * @package		Joomla.Site
 * @subpackage	mod_menu
 * @copyright	Copyright (C) 2005 - 2010 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;

// Include the syndicate functions only once
require_once dirname(__FILE__).DS.'helper.php';

$list	= modMenuHelper2::getList($params);
$app	= JFactory::getApplication();
$menu	= $app->getMenu();
$active	= $menu->getActive();
$active_id = isset($active) ? $active->id : $menu->getDefault()->id;
$path	= isset($active) ? $active->tree : array();
$showAll	= $params->get('showAllChildren');

$parentlinks = $params->get('parentlinks');

require(JModuleHelper::getLayoutPath('mod_s5_accordion_menu'));


$br = strtolower($_SERVER['HTTP_USER_AGENT']); // what browser.

$browser = "other";

if(strrpos($br,"msie 6") > 1) {
$browser = "ie6";
} 

if(strrpos($br,"msie 7") > 1) {
$browser = "ie7";
} 

JHTML::_('behavior.mootools');

?>

<script type="text/javascript">			
var s5_am_parent_link_enabled = "<?php echo $parentlinks ?>";	
<?php if ($browser == "ie6" || $browser == "ie7") { ?>
var s5_accordion_menu_display = "inline";
<?php } ?>	
<?php if ($browser != "ie6" && $browser != "ie7") { ?>
var s5_accordion_menu_display = "block";
<?php } ?>		
</script>

<script src="<?php echo $mod_s5_accordionurl?>js/s5_accordion_menu.js" type="text/javascript"></script>