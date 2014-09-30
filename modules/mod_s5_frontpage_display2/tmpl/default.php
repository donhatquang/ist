<?php
// no direct access
defined('_JEXEC') or die('Restricted access');
?>

<div style="display:none">

<img src="<?php echo $box1_pic ?>" alt=""></img>
<img src="<?php echo $top1_pic ?>" alt=""></img>
<img src="<?php echo $box1_pic_hover ?>" alt=""></img>
<img src="<?php echo $box2_pic ?>" alt=""></img>
<img src="<?php echo $top2_pic ?>" alt=""></img>
<img src="<?php echo $box2_pic_hover ?>" alt=""></img>
<?php if ($boxes >= "3") {?>
<img src="<?php echo $box3_pic ?>" alt=""></img>
<img src="<?php echo $top3_pic ?>" alt=""></img>
<img src="<?php echo $box3_pic_hover ?>" alt=""></img>
<?php } ?>
<?php if ($boxes >= "4") {?>
<img src="<?php echo $box4_pic ?>" alt=""></img>
<img src="<?php echo $top4_pic ?>" alt=""></img>
<img src="<?php echo $box4_pic_hover ?>" alt=""></img>
<?php } ?>
<?php if ($boxes >= "5") {?>
<img src="<?php echo $box5_pic ?>" alt=""></img>
<img src="<?php echo $top5_pic ?>" alt=""></img>
<img src="<?php echo $box5_pic_hover ?>" alt=""></img>
<?php } ?>
<?php if ($boxes >= "6") {?>
<img src="<?php echo $box6_pic ?>" alt=""></img>
<img src="<?php echo $top6_pic ?>" alt=""></img>
<img src="<?php echo $box6_pic_hover ?>" alt=""></img>
<?php } ?>
<?php if ($boxes >= "7") {?>
<img src="<?php echo $box7_pic ?>" alt=""></img>
<img src="<?php echo $top7_pic ?>" alt=""></img>
<img src="<?php echo $box7_pic_hover ?>" alt=""></img>
<?php } ?>
<?php if ($boxes >= "8") {?>
<img src="<?php echo $box8_pic ?>" alt=""></img>
<img src="<?php echo $top8_pic ?>" alt=""></img>
<img src="<?php echo $box8_pic_hover ?>" alt=""></img>
<?php } ?>

</div>

<div id="s5_fd_outer" style="<?php if ($background != "") { ?>background:#<?php echo $background ?>; <?php } ?>display:none; margin-bottom:<?php echo $bm ?>px; margin-top:<?php echo $tm ?>px; margin-right:<?php echo $rm ?>px; margin-left:<?php echo $lm ?>px; padding:0px; width:<?php echo $modulewidth ?>px; height:<?php echo $topheight + $bottomheight ?>px;">

<?php if (($box1width + $box2width + $box3width + $box4width + $box5width + $box6width + $box7width + $box8width) > $modulewidth ) {?>
<div id="s5_fd_size_alert" style="font-size:14px; font-weight:bold; color:#000000; padding:15px">
Width Calculation Problem - The current width of your module is set to <?php echo $modulewidth ?>px and the total width of all your tabs is <?php echo $box1width + $box2width + $box3width + $box4width + $box5width + $box6width + $box7width + $box8width ?>px. The total width of the tabs may not exceed the width of the module, you need to reduce the width of your tabs in the modules backend.
</div>
<?php } ?>
	
	<div style="height:<?php echo $topheight ?>px; width:<?php echo $modulewidth ?>px; overflow:hidden; position:relative; z-index:1">
	
		<div id="s5_fd_div1" onmouseover="s5_fd_hover()" onmouseout="s5_fd_hover_out()" style="position:absolute; z-index:1; opacity: 0;">
			<div id="s5_fd_div1_inner" style="margin-bottom:-<?php echo $topheight ?>px; height:<?php echo $topheight ?>px; width:<?php echo $modulewidth ?>px; position:absolute; z-index:2">
				<?php if ($highlight == "1") { echo $top1_content; } if ($highlight == "2") { echo $top2_content; } if ($highlight == "3") { echo $top3_content; } if ($highlight == "4") { echo $top4_content; } if ($highlight == "5") { echo $top5_content; } if ($highlight == "6") { echo $top6_content; } if ($highlight == "7") { echo $top7_content; } if ($highlight == "8") { echo $top8_content; } ?>
			</div> 
			<img id="s5_fd_image1" alt="" src="" />
		</div>
		
		<div id="s5_fd_div2" onmouseover="s5_fd_hover()" onmouseout="s5_fd_hover_out()" style="position:absolute; z-index:1; opacity: 1;">
			<div id="s5_fd_div2_inner" style="margin-bottom:-<?php echo $topheight ?>px; height:<?php echo $topheight ?>px; width:<?php echo $modulewidth ?>px; position:absolute; z-index:2">
				<?php if ($highlight == "1") { echo $top1_content; } if ($highlight == "2") { echo $top2_content; } if ($highlight == "3") { echo $top3_content; } if ($highlight == "4") { echo $top4_content; } if ($highlight == "5") { echo $top5_content; } if ($highlight == "6") { echo $top6_content; } if ($highlight == "7") { echo $top7_content; } if ($highlight == "8") { echo $top8_content; } ?>
			</div> 
			<img id="s5_fd_image2" alt="" src="" />
		</div>
		
	</div>
	
	<div id="s5_fd_1" onmouseover="s5_fd1();s5_fd_hover()" onmouseout="s5_fd_hover_out()" style="float:left; padding:0px; margin:0px; height:<?php echo $bottomheight ?>px; width:<?php echo $box1width ?>px; background-image: url(<?php echo $box1_pic ?>); background-repeat: no-repeat">
		<?php echo $box1_content ?>
	</div>
	<div id="s5_fd_2" onmouseover="s5_fd2();s5_fd_hover()" onmouseout="s5_fd_hover_out()" style="float:left; padding:0px; margin:0px; height:<?php echo $bottomheight ?>px; width:<?php echo $box2width ?>px; background-image: url(<?php echo $box2_pic ?>); background-repeat: no-repeat">
		<?php echo $box2_content ?>
	</div>
	<?php if ($boxes >= "3") {?>
	<div id="s5_fd_3" onmouseover="s5_fd3();s5_fd_hover()" onmouseout="s5_fd_hover_out()" style="float:left; padding:0px; margin:0px; height:<?php echo $bottomheight ?>px; width:<?php echo $box3width ?>px; background-image: url(<?php echo $box3_pic ?>); background-repeat: no-repeat">
		<?php echo $box3_content ?>
	</div>
	<?php }?>
	<?php if ($boxes >= "4") {?>
	<div id="s5_fd_4" onmouseover="s5_fd4();s5_fd_hover()" onmouseout="s5_fd_hover_out()" style="float:left; padding:0px; margin:0px; height:<?php echo $bottomheight ?>px; width:<?php echo $box4width ?>px; background-image: url(<?php echo $box4_pic ?>); background-repeat: no-repeat">
		<?php echo $box4_content ?>
	</div>
	<?php }?>
	<?php if ($boxes >= "5") {?>
	<div id="s5_fd_5" onmouseover="s5_fd5();s5_fd_hover()" onmouseout="s5_fd_hover_out()" style="float:left; padding:0px; margin:0px; height:<?php echo $bottomheight ?>px; width:<?php echo $box5width ?>px; background-image: url(<?php echo $box5_pic ?>); background-repeat: no-repeat">
		<?php echo $box5_content ?>
	</div>
	<?php }?>
	<?php if ($boxes >= "6") {?>
	<div id="s5_fd_6" onmouseover="s5_fd6();s5_fd_hover()" onmouseout="s5_fd_hover_out()" style="float:left; padding:0px; margin:0px; height:<?php echo $bottomheight ?>px; width:<?php echo $box6width ?>px; background-image: url(<?php echo $box6_pic ?>); background-repeat: no-repeat">
		<?php echo $box6_content ?>
	</div>
	<?php }?>
	<?php if ($boxes >= "7") {?>
	<div id="s5_fd_7" onmouseover="s5_fd7();s5_fd_hover()" onmouseout="s5_fd_hover_out()" style="float:left; padding:0px; margin:0px; height:<?php echo $bottomheight ?>px; width:<?php echo $box7width ?>px; background-image: url(<?php echo $box7_pic ?>); background-repeat: no-repeat">
		<?php echo $box7_content ?>
	</div>
	<?php }?>
	<?php if ($boxes >= "8") {?>
	<div id="s5_fd_8" onmouseover="s5_fd8();s5_fd_hover()" onmouseout="s5_fd_hover_out()" style="float:left; padding:0px; margin:0px; height:<?php echo $bottomheight ?>px; width:<?php echo $box8width ?>px; background-image: url(<?php echo $box8_pic ?>); background-repeat: no-repeat">
		<?php echo $box8_content ?>
	</div>
	<?php }?>
		
</div>

<script type="text/javascript">//<![CDATA[

var s5_fd_highlight = '<?php echo $highlight ?>';
var s5_fd_rotate = '<?php echo $rotate ?>';
var s5_fd_speed = '<?php echo $speed ?>';
var top1_pic = '<?php echo $top1_pic ?>';
var top1_hyperlink = '<?php echo $top1_hyperlink ?>';
var top1_target = '<?php echo $top1_target ?>';
var top1_content = '<?php echo $top1_content ?>';
var box1_pic = '<?php echo $box1_pic ?>';
var box1_pic_hover = '<?php echo $box1_pic_hover ?>';
var box1_hyperlink = '<?php echo $box1_hyperlink ?>';
var box1_target = '<?php echo $box1_target ?>';
var top2_pic = '<?php echo $top2_pic ?>';
var top2_hyperlink = '<?php echo $top2_hyperlink ?>';
var top2_target = '<?php echo $top2_target ?>';
var top2_content = '<?php echo $top2_content ?>';
var box2_pic = '<?php echo $box2_pic ?>';
var box2_pic_hover = '<?php echo $box2_pic_hover ?>';
var box2_hyperlink = '<?php echo $box2_hyperlink ?>';
var box2_target = '<?php echo $box2_target ?>';
var top3_pic = '<?php echo $top3_pic ?>';
var top3_hyperlink = '<?php echo $top3_hyperlink ?>';
var top3_target = '<?php echo $top3_target ?>';
var top3_content = '<?php echo $top3_content ?>';
var box3_pic = '<?php echo $box3_pic ?>';
var box3_pic_hover = '<?php echo $box3_pic_hover ?>';
var box3_hyperlink = '<?php echo $box3_hyperlink ?>';
var box3_target = '<?php echo $box3_target ?>';
var top4_pic = '<?php echo $top4_pic ?>';
var top4_hyperlink = '<?php echo $top4_hyperlink ?>';
var top4_target = '<?php echo $top4_target ?>';
var top4_content = '<?php echo $top4_content ?>';
var box4_pic = '<?php echo $box4_pic ?>';
var box4_pic_hover = '<?php echo $box4_pic_hover ?>';
var box4_hyperlink = '<?php echo $box4_hyperlink ?>';
var box4_target = '<?php echo $box4_target ?>';
var top5_pic = '<?php echo $top5_pic ?>';
var top5_hyperlink = '<?php echo $top5_hyperlink ?>';
var top5_target = '<?php echo $top5_target ?>';
var box5_pic = '<?php echo $box5_pic ?>';
var box5_pic_hover = '<?php echo $box5_pic_hover ?>';
var box5_hyperlink = '<?php echo $box5_hyperlink ?>';
var box5_target = '<?php echo $box5_target ?>';
var top5_content = '<?php echo $top5_content ?>';
var top6_pic = '<?php echo $top6_pic ?>';
var top6_hyperlink = '<?php echo $top6_hyperlink ?>';
var top6_target = '<?php echo $top6_target ?>';
var top6_content = '<?php echo $top7_content ?>';
var box6_pic = '<?php echo $box6_pic ?>';
var box6_pic_hover = '<?php echo $box6_pic_hover ?>';
var box6_hyperlink = '<?php echo $box6_hyperlink ?>';
var box6_target = '<?php echo $box6_target ?>';
var top7_pic = '<?php echo $top7_pic ?>';
var top7_hyperlink = '<?php echo $top7_hyperlink ?>';
var top7_target = '<?php echo $top7_target ?>';
var top7_content = '<?php echo $top7_content ?>';
var box7_pic = '<?php echo $box7_pic ?>';
var box7_pic_hover = '<?php echo $box7_pic_hover ?>';
var box7_hyperlink = '<?php echo $box7_hyperlink ?>';
var box7_target = '<?php echo $box7_target ?>';
var top8_pic = '<?php echo $top8_pic ?>';
var top8_hyperlink = '<?php echo $top8_hyperlink ?>';
var top8_target = '<?php echo $top8_target ?>';
var top8_content = '<?php echo $top8_content ?>';
var box8_pic = '<?php echo $box8_pic ?>';
var box8_pic_hover = '<?php echo $box8_pic_hover ?>';
var box8_hyperlink = '<?php echo $box8_hyperlink ?>';
var box8_target = '<?php echo $box8_target ?>';

//]]></script>

<script language="javascript" type="text/javascript" src="<?php echo $LiveSite ?>/modules/mod_s5_frontpage_display2/s5_frontpage_display_2/s5_fd.js"></script>