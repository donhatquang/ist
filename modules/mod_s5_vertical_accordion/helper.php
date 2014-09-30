<?php
// no direct access
defined('_JEXEC') or die('Restricted access');
?>

<div id="s5_va_accordion" style="width:<?php echo $s5_va_width ?>px">
<div id="s5_va_accordion_inner">
	<?php if(JModuleHelper::getModules('s5_va_1')) { ?>
		<h3 class="s5_va_toggler">
			<span class="s5_va_h3_inner_span">
				<?php echo $title1 ?>
			</span>
		</h3>
		<div class="s5_va_element">
			<div class="s5_va_element_inner">
				<?php
					$myblurb_modules = &JModuleHelper::getModules( 's5_va_1' );
					foreach ($myblurb_modules as $myblurb) {
					$_options = array( 'style' => 'raw' );
					echo JModuleHelper::renderModule( $myblurb, $_options );
					}
				?>
			</div>
		</div>
	<?php } ?>
	<?php if(JModuleHelper::getModules('s5_va_2')) { ?>
		<h3 class="s5_va_toggler">
			<span class="s5_va_h3_inner_span">
				<?php echo $title2 ?>
			</span>
		</h3>
		<div class="s5_va_element">
			<div class="s5_va_element_inner">
				<?php
					$myblurb_modules = &JModuleHelper::getModules( 's5_va_2' );
					foreach ($myblurb_modules as $myblurb) {
					$_options = array( 'style' => 'raw' );
					echo JModuleHelper::renderModule( $myblurb, $_options );
					}
				?>
			</div>
		</div>
	<?php } ?>
	<?php if(JModuleHelper::getModules('s5_va_3')) { ?>
		<h3 class="s5_va_toggler">
			<span class="s5_va_h3_inner_span">
				<?php echo $title3 ?>
			</span>
		</h3>
		<div class="s5_va_element">
			<div class="s5_va_element_inner">
				<?php
					$myblurb_modules = &JModuleHelper::getModules( 's5_va_3' );
					foreach ($myblurb_modules as $myblurb) {
					$_options = array( 'style' => 'raw' );
					echo JModuleHelper::renderModule( $myblurb, $_options );
					}
				?>
			</div>
		</div>
	<?php } ?>
	<?php if(JModuleHelper::getModules('s5_va_4')) { ?>
		<h3 class="s5_va_toggler">
			<span class="s5_va_h3_inner_span">
				<?php echo $title4 ?>
			</span>
		</h3>
		<div class="s5_va_element">
			<div class="s5_va_element_inner">
				<?php
					$myblurb_modules = &JModuleHelper::getModules( 's5_va_4' );
					foreach ($myblurb_modules as $myblurb) {
					$_options = array( 'style' => 'raw' );
					echo JModuleHelper::renderModule( $myblurb, $_options );
					}
				?>
			</div>
		</div>
	<?php } ?>
	<?php if(JModuleHelper::getModules('s5_va_5')) { ?>
		<h3 class="s5_va_toggler">
			<span class="s5_va_h3_inner_span">
				<?php echo $title5 ?>
			</span>
		</h3>
		<div class="s5_va_element">
			<div class="s5_va_element_inner">
				<?php
					$myblurb_modules = &JModuleHelper::getModules( 's5_va_5' );
					foreach ($myblurb_modules as $myblurb) {
					$_options = array( 'style' => 'raw' );
					echo JModuleHelper::renderModule( $myblurb, $_options );
					}
				?>
			</div>
		</div>
	<?php } ?>
	<?php if(JModuleHelper::getModules('s5_va_6')) { ?>
		<h3 class="s5_va_toggler">
			<span class="s5_va_h3_inner_span">
				<?php echo $title6 ?>
			</span>
		</h3>
		<div class="s5_va_element">
			<div class="s5_va_element_inner">
				<?php
					$myblurb_modules = &JModuleHelper::getModules( 's5_va_6' );
					foreach ($myblurb_modules as $myblurb) {
					$_options = array( 'style' => 'raw' );
					echo JModuleHelper::renderModule( $myblurb, $_options );
					}
				?>
			</div>
		</div>
	<?php } ?>
	<?php if(JModuleHelper::getModules('s5_va_7')) { ?>
		<h3 class="s5_va_toggler">
			<span class="s5_va_h3_inner_span">
				<?php echo $title7 ?>
			</span>
		</h3>
		<div class="s5_va_element">
			<div class="s5_va_element_inner">
				<?php
					$myblurb_modules = &JModuleHelper::getModules( 's5_va_7' );
					foreach ($myblurb_modules as $myblurb) {
					$_options = array( 'style' => 'raw' );
					echo JModuleHelper::renderModule( $myblurb, $_options );
					}
				?>
			</div>
		</div>
	<?php } ?>
	<?php if(JModuleHelper::getModules('s5_va_8')) { ?>
		<h3 class="s5_va_toggler">
			<span class="s5_va_h3_inner_span">
				<?php echo $title8 ?>
			</span>
		</h3>
		<div class="s5_va_element">
			<div class="s5_va_element_inner">
				<?php
					$myblurb_modules = &JModuleHelper::getModules( 's5_va_8' );
					foreach ($myblurb_modules as $myblurb) {
					$_options = array( 'style' => 'raw' );
					echo JModuleHelper::renderModule( $myblurb, $_options );
					}
				?>
			</div>
		</div>
	<?php } ?>
	<?php if(JModuleHelper::getModules('s5_va_9')) { ?>
		<h3 class="s5_va_toggler">
			<span class="s5_va_h3_inner_span">
				<?php echo $title9 ?>
			</span>
		</h3>
		<div class="s5_va_element">
			<div class="s5_va_element_inner">
				<?php
					$myblurb_modules = &JModuleHelper::getModules( 's5_va_9' );
					foreach ($myblurb_modules as $myblurb) {
					$_options = array( 'style' => 'raw' );
					echo JModuleHelper::renderModule( $myblurb, $_options );
					}
				?>
			</div>
		</div>
	<?php } ?>
	<?php if(JModuleHelper::getModules('s5_va_10')) { ?>
		<h3 class="s5_va_toggler">
			<span class="s5_va_h3_inner_span">
				<?php echo $title10 ?>
			</span>
		</h3>
		<div class="s5_va_element">
			<div class="s5_va_element_inner">
				<?php
					$myblurb_modules = &JModuleHelper::getModules( 's5_va_10' );
					foreach ($myblurb_modules as $myblurb) {
					$_options = array( 'style' => 'raw' );
					echo JModuleHelper::renderModule( $myblurb, $_options );
					}
				?>
			</div>
		</div>
	<?php } ?>
</div>
</div>

<script type="text/javascript">

<?php if ($s5_va_autorun != 0) { ?>		
var s5_va_accordion_timer = 0;
var s5_va_accordion_current = 0;
var s5_va_accordion_toggler = 0;
var s5_va_accordion_element = 0;
var s5_va_accordion_len = 0;
<?php } ?>

window.addEvent('domready', function() {

	/* var accordion = new Accordion($$('.s5_va_toggler'),$$('.s5_va_element'), { pre-MooTools More */
	
	s5_va_accordion_toggler = $$('.s5_va_toggler');
	s5_va_accordion_element = $$('.s5_va_element');
	s5_va_accordion_len = s5_va_accordion_toggler.length;
	
	var s5_va_accordion = new Fx.Accordion($$('.s5_va_toggler'),$$('.s5_va_element'), {
		<?php if ($s5_va_opacity == "yes") { ?>
		opacity: 100,
		<?php } ?>
		<?php if ($s5_va_opacity == "no") { ?>
		opacity: 0,
		<?php } ?>
		alwaysHide: true,
		onActive: function(s5_va_toggler) { s5_va_accordion_current = this.togglers.indexOf(s5_va_toggler); s5_va_toggler.className="s5_va_active"; },
		onBackground: function(s5_va_toggler) { s5_va_toggler.className="s5_va_inactive"; }
	});
	
	<?php if ($s5_va_autorun != 0) { ?>		
	function accordionAutoRun(){
	//<![CDATA[
		if(s5_va_accordion_current < s5_va_accordion_len - 1){
			s5_va_accordion_current++;
		}
		else{
			s5_va_accordion_current = 0;
		}	
	//]]>
		s5_va_accordion_toggler[s5_va_accordion_current].fireEvent('click');
	};
		
	s5_va_accordion_timer = setInterval(accordionAutoRun, <?php echo $s5_va_autorun; ?>);
	$('s5_va_accordion').addEvent('mouseenter', function() { clearInterval(s5_va_accordion_timer); });
	$('s5_va_accordion').addEvent('mouseleave', function() { s5_va_accordion_timer = setInterval(accordionAutoRun, <?php echo $s5_va_autorun; ?>); });
	<?php } ?>

});

<?php if ($s5_va_click_or_hover == "mouse") { ?>
$$('.s5_va_toggler').addEvent('mouseenter', function() { this.fireEvent('click'); });
<?php } ?>

</script>