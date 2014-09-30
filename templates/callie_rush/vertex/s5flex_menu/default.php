<?php
// no direct access
defined('_JEXEC') or die('Restricted access');

//set the default S5scion menu params
/*$template_params->_raw = $template_params->_raw."
startLevel=0
showAllChildren=1
window_open=
show_whitespace=0
menu_images=1
menu_images_align=2
menu_images_link=1
expand_menu=1
activate_parent=1
full_active_id=1
menu_style=
";*/
$templateparams->def('showAllChildren', 1);
$templateparams->def('expand_menu', 1);
$templateparams->def('startLevel',	0);
$templateparams->def('window_open', "");
$templateparams->def('show_whitespace', 0);
$templateparams->def('menu_images', 1);
$templateparams->def('menu_images_align', 2);
$templateparams->def('menu_images_link', 1);
$templateparams->def('activate_parent', 1);
$templateparams->def('full_active_id',	1);
$templateparams->def('menu_style',	"");

if($templateparams->get('s5_maxdepth',0) > 0){
	$templateparams->def('endLevel', $templateparams->get('s5_maxdepth',1));
}else{
	$templateparams->def('endLevel', 0);
}

require_once (JPATH_THEMES.DS.$app->getTemplate().DS."vertex/s5flex_menu".DS."module_helper.php");
require_once (JPATH_THEMES.DS.$app->getTemplate().DS."vertex/s5flex_menu".DS."helpers.php");
//S5modMainMenuHelper::S5render($template_params,'modS5MainMenuXMLCallback');
S5modMainMenuHelper::S5buildXML($templateparams);

//exit();
?>