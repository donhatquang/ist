<?php
/**
 * @package     Vertex Framework
 * @version		1.0
 * @author		Shape 5 http://www.shape5.com
 * @copyright 	Copyright (C) 2007 - 2010 Shape 5, LLC
 * @license		http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
 *
 */
// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );

jimport('joomla.html.html');
jimport('joomla.form.formfield');//import the necessary class definition for formfield


/**
 * Supports an HTML select list of articles
 * @since  1.6
 */
class JFormFieldVertex extends JFormField
{
	protected $type = 'Vertex'; //the form field type
    
    protected function getInput() {
        
        if(!defined('VERTEX_LOADED')) {
            $document =& JFactory::getDocument();
            JFactory::getApplication()->set('MooToolsVersion', '1.2.4 +Compat');
            JHTML::addIncludePath(JPATH_PLUGINS.DS.'system'.DS.'mtupgrade');
            
            //replace mootools with our own moo1.3 version
            $moo11 = JURI::root(true) .'/media/system/js/mootools-core.js';
            $moo12 = JURI::root(true) .'/media/system/js/mootools-core.js';
            $moo13 = JURI::root(true) .'/media/system/js/mootools-core.js';
            $moo14 = JURI::root(true) .'/media/system/js/mootools-more.js';
            
            $a = array();
            foreach ($document->_scripts as $k => $v) {if ($k == $moo11 || $k == $moo12) { $a[$moo13] = $v; } else { $a[$k] = $v; }}
            foreach ($document->_scripts as $k => $v) {if ($k == $moo14) { unset($a[$moo14]); } else { $a[$k] = $v; }}
            $document->_scripts = $a;
            
            $document->_script = str_replace("window.addEvent('domready', function() {
			$$('.hasTip').each(function(el) {
				var title = el.get('title');
				if (title) {
					var parts = title.split('::', 2);
					el.store('tip:title', parts[0]);
					el.store('tip:text', parts[1]);
				}
			});
			var JTooltips = new Tips($$('.hasTip'), { maxTitleChars: 50, fixed: false});
		});", '', $document->_script);
            
            //$document->_script = str_replace("window.addEvent('domready', function(){ new Fx.Accordion($$('div#template-sliders-9.pane-sliders > .panel > h3.pane-toggler'), $$('div#template-sliders-9.pane-sliders > .panel > div.pane-slider'), {onActive: function(toggler, i) {toggler.addClass('pane-toggler-down');toggler.removeClass('pane-toggler');i.addClass('pane-down');i.removeClass('pane-hide');Cookie.write('jpanesliders_template-sliders-9',$$('div#template-sliders-9.pane-sliders > .panel > h3').indexOf(toggler));},onBackground: function(toggler, i) {toggler.addClass('pane-toggler');toggler.removeClass('pane-toggler-down');i.addClass('pane-hide');i.removeClass('pane-down');if($$('div#template-sliders-9.pane-sliders > .panel > h3').length==$$('div#template-sliders-9.pane-sliders > .panel > h3.pane-toggler').length) Cookie.write('jpanesliders_template-sliders-9',-1);},duration: 300,opacity: false,alwaysHide: true}); });", '', $document->_script);
            
            $document->addStyleSheet(JURI::root(true) . '/templates/callie_rush/vertex/admin/style.css');
            $document->addScript('http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js');
            $document->addScript('http://jquery-ui.googlecode.com/svn/tags/latest/ui/minified/jquery-ui.min.js');
            //$document->addScriptDeclaration('jQuery(\'#style-form\').find(\'.width-40\').find(\'.hasTip\').each(function(){
                //var title = jQuery(this).attr(\'title\');
                //jQuery(this).attr(\'alt\', title);
            //});');
            $document->addScript(JURI::root(true) . '/templates/callie_rush/vertex/admin/jquery.vertexAdmin.min.js');
            
            // Initialize variables.
            $session = JFactory::getSession();
            $options = array();
            $attr = '';
            $attr .= $this->element['type'] ? ' class="'.(string) $this->element['type'].'"' : '';
            define('VERTEX_LOADED', true);
            // Output
            return '<script type="text/javascript"></script>';
        }
	}
}
