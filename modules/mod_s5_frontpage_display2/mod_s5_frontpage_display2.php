<?php
/**
@version 1.0
Author: Shape 5 - Professional Template Community
Available for download at www.shape5.com
*/

defined('_JEXEC') or die('Direct Access to this location is not allowed.');

JHTML::_('behavior.mootools');

$modulewidth = $params->get( 'modulewidth', '' );
$topheight = $params->get( 'topheight', '' );
$bottomheight = $params->get( 'bottomheight', '' );
$boxes = $params->get( 'boxes', '' );
$highlight = $params->get( 'highlight', '' );
$background = $params->get( 'background', '' );
$tm = $params->get( 'tm', '' );
$rm = $params->get( 'rm', '' );
$bm = $params->get( 'bm', '' );
$lm = $params->get( 'lm', '' );
$rotate = $params->get( 'rotate', '' );
$speed = $params->get( 'speed', '' );
$top1_pic = $params->get( 'top1_pic', '' );
$top1_hyperlink = $params->get( 'top1_hyperlink', '' );
$top1_target = $params->get( 'top1_target', '' );
$top1_content = $params->get( 'top1_content', '' );
$top1_content = str_replace(array("\r", "\r\n", "\n"), '', $top1_content);
$top1_content = str_replace("'",'"',$top1_content);
$box1width = $params->get( 'box1width', '' );
$box1_pic = $params->get( 'box1_pic', '' );
$box1_pic_hover = $params->get( 'box1_pic_hover', '' );
if ($box1_pic_hover == "") {
	$box1_pic_hover = $box1_pic;
}
$box1_hyperlink = $params->get( 'box1_hyperlink', '' );
$box1_target = $params->get( 'box1_target', '' );
$box1_content = $params->get( 'box1_content', '' );
$box1_content = str_replace(array("\r", "\r\n", "\n"), '', $box1_content);
$box1_content = str_replace("'",'"',$box1_content);
$top2_pic = $params->get( 'top2_pic', '' );
$top2_hyperlink = $params->get( 'top2_hyperlink', '' );
$top2_target = $params->get( 'top2_target', '' );
$top2_content = $params->get( 'top2_content', '' );
$top2_content = str_replace(array("\r", "\r\n", "\n"), '', $top2_content);
$top2_content = str_replace("'",'"',$top2_content);
$box2width = $params->get( 'box2width', '' );
$box2_pic = $params->get( 'box2_pic', '' );
$box2_pic_hover = $params->get( 'box2_pic_hover', '' );
if ($box2_pic_hover == "") {
	$box2_pic_hover = $box2_pic;
}
$box2_hyperlink = $params->get( 'box2_hyperlink', '' );
$box2_target = $params->get( 'box2_target', '' );
$box2_content = $params->get( 'box2_content', '' );
$box2_content = str_replace(array("\r", "\r\n", "\n"), '', $box2_content);
$box2_content = str_replace("'",'"',$box2_content);
$top3_pic = $params->get( 'top3_pic', '' );
$top3_hyperlink = $params->get( 'top3_hyperlink', '' );
$top3_target = $params->get( 'top3_target', '' );
$top3_content = $params->get( 'top3_content', '' );
$top3_content = str_replace(array("\r", "\r\n", "\n"), '', $top3_content);
$top3_content = str_replace("'",'"',$top3_content);
$box3width = $params->get( 'box3width', '' );
$box3_pic = $params->get( 'box3_pic', '' );
$box3_pic_hover = $params->get( 'box3_pic_hover', '' );
if ($box3_pic_hover == "") {
	$box3_pic_hover = $box3_pic;
}
$box3_hyperlink = $params->get( 'box3_hyperlink', '' );
$box3_target = $params->get( 'box3_target', '' );
$box3_content = $params->get( 'box3_content', '' );
$box3_content = str_replace(array("\r", "\r\n", "\n"), '', $box3_content);
$box3_content = str_replace("'",'"',$box3_content);
$top4_pic = $params->get( 'top4_pic', '' );
$top4_hyperlink = $params->get( 'top4_hyperlink', '' );
$top4_target = $params->get( 'top4_target', '' );
$top4_content = $params->get( 'top4_content', '' );
$top4_content = str_replace(array("\r", "\r\n", "\n"), '', $top4_content);
$top4_content = str_replace("'",'"',$top4_content);
$box4width = $params->get( 'box4width', '' );
$box4_pic = $params->get( 'box4_pic', '' );
$box4_pic_hover = $params->get( 'box4_pic_hover', '' );
if ($box4_pic_hover == "") {
	$box4_pic_hover = $box4_pic;
}
$box4_hyperlink = $params->get( 'box4_hyperlink', '' );
$box4_target = $params->get( 'box4_target', '' );
$box4_content = $params->get( 'box4_content', '' );
$box4_content = str_replace(array("\r", "\r\n", "\n"), '', $box4_content);
$box4_content = str_replace("'",'"',$box4_content);
$top5_pic = $params->get( 'top5_pic', '' );
$top5_hyperlink = $params->get( 'top5_hyperlink', '' );
$top5_target = $params->get( 'top5_target', '' );
$top5_content = $params->get( 'top5_content', '' );
$top5_content = str_replace(array("\r", "\r\n", "\n"), '', $top5_content);
$top5_content = str_replace("'",'"',$top5_content);
$box5width = $params->get( 'box5width', '' );
$box5_pic = $params->get( 'box5_pic', '' );
$box5_pic_hover = $params->get( 'box5_pic_hover', '' );
if ($box5_pic_hover == "") {
	$box5_pic_hover = $box5_pic;
}
$box5_hyperlink = $params->get( 'box5_hyperlink', '' );
$box5_target = $params->get( 'box5_target', '' );
$box5_content = $params->get( 'box5_content', '' );
$box5_content = str_replace(array("\r", "\r\n", "\n"), '', $box5_content);
$box5_content = str_replace("'",'"',$box5_content);
$top6_pic = $params->get( 'top6_pic', '' );
$top6_hyperlink = $params->get( 'top6_hyperlink', '' );
$top6_target = $params->get( 'top6_target', '' );
$top6_content = $params->get( 'top6_content', '' );
$top6_content = str_replace(array("\r", "\r\n", "\n"), '', $top6_content);
$top6_content = str_replace("'",'"',$top6_content);
$box6width = $params->get( 'box6width', '' );
$box6_pic = $params->get( 'box6_pic', '' );
$box6_pic_hover = $params->get( 'box6_pic_hover', '' );
if ($box6_pic_hover == "") {
	$box6_pic_hover = $box6_pic;
}
$box6_hyperlink = $params->get( 'box6_hyperlink', '' );
$box6_target = $params->get( 'box6_target', '' );
$box6_content = $params->get( 'box6_content', '' );
$box6_content = str_replace(array("\r", "\r\n", "\n"), '', $box6_content);
$box6_content = str_replace("'",'"',$box6_content);
$top7_pic = $params->get( 'top7_pic', '' );
$top7_hyperlink = $params->get( 'top7_hyperlink', '' );
$top7_target = $params->get( 'top7_target', '' );
$top7_content = $params->get( 'top7_content', '' );
$top7_content = str_replace(array("\r", "\r\n", "\n"), '', $top7_content);
$top7_content = str_replace("'",'"',$top7_content);
$box7width = $params->get( 'box7width', '' );
$box7_pic = $params->get( 'box7_pic', '' );
$box7_pic_hover = $params->get( 'box7_pic_hover', '' );
if ($box7_pic_hover == "") {
	$box7_pic_hover = $box7_pic;
}
$box7_hyperlink = $params->get( 'box7_hyperlink', '' );
$box7_target = $params->get( 'box7_target', '' );
$box7_content = $params->get( 'box7_content', '' );
$box7_content = str_replace(array("\r", "\r\n", "\n"), '', $box7_content);
$box7_content = str_replace("'",'"',$box7_content);
$top8_pic = $params->get( 'top8_pic', '' );
$top8_hyperlink = $params->get( 'top8_hyperlink', '' );
$top8_target = $params->get( 'top8_target', '' );
$top8_content = $params->get( 'top8_content', '' );
$top8_content = str_replace(array("\r", "\r\n", "\n"), '', $top8_content);
$top8_content = str_replace("'",'"',$top8_content);
$box8width = $params->get( 'box8width', '' );
$box8_pic = $params->get( 'box8_pic', '' );
$box8_pic_hover = $params->get( 'box8_pic_hover', '' );
if ($box8_pic_hover == "") {
	$box8_pic_hover = $box8_pic;
}
$box8_hyperlink = $params->get( 'box8_hyperlink', '' );
$box8_target = $params->get( 'box8_target', '' );
$box8_content = $params->get( 'box8_content', '' );
$box8_content = str_replace(array("\r", "\r\n", "\n"), '', $box8_content);
$box8_content = str_replace("'",'"',$box8_content);

if ($boxes < 8) {
	$box8width = 0;
}
if ($boxes < 7) {
	$box7width = 0;
}
if ($boxes < 6) {
	$box6width = 0;
}
if ($boxes < 5) {
	$box5width = 0;
}
if ($boxes < 4) {
	$box4width = 0;
}
if ($boxes < 3) {
	$box3width = 0;
}

$LiveSite 	= JURI::base();

$url = JURI::root().'modules/mod_s5_frontpage_display2/';

require(JModuleHelper::getLayoutPath('mod_s5_frontpage_display2'));

?>
