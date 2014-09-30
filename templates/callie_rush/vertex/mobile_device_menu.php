<?php

class s5_mobile_menu_helper
{
	  function get_s5_mobile_menu($s5_mobile_device_menu_title,$menu_name='mainmenu',$s5_mobile_device_menu_subs)
	   {
			$user =& JFactory::getUser();

		    $menu_name =  $menu_name;
			$startline =  @$s5_mobile_device_menu_title;
	 		$app		= JFactory::getApplication();
			$menu		= $app->getMenu();
			$items 		= $menu->getItems('menutype',$menu_name);


		    $mymenu_content ="<form name='Lnk'><select id='s5_mobile_menu' name='s5_mobile_menu' class='inputbox'
				onchange='javascript:location.href=document.Lnk.s5_mobile_menu.options[document.Lnk.s5_mobile_menu.selectedIndex].value;' >
		        <option id='s5_md_menu_active'>-- ".$startline."  --</option>";

		    if (count($items)) {


		    	$parents = array();
				$tmparray = array();
				foreach($items as $item) {


				 if((in_array($item->parent_id,$parents) && $item->level >1) || $item->level==1 ){
					$tmparray[$item->title.$item->id]->title = $item->title;
					$tmparray[$item->title.$item->id]->level = $item->level;
					$tmparray[$item->title.$item->id]->link = $item->link;
					$tmparray[$item->title.$item->id]->type = $item->type;//echo $item->parent_id.'--';

				 } else {

				 	continue;
				 }
				 $parents[] = $item->id;


				}
				ksort($tmparray);

				foreach($tmparray as   $item) {
					if (@$s5_mobile_device_menu_subs == "first") {

						if($item->level >1 ) continue;

					}

					if ($item->type != "separator" ) {

							$mymenu_content .= " <option value=\"".$item->link."\" >$item->title</option>\r";

					}
			    }

			 	   $mymenu_content .= "</select></form>";
			        return $mymenu_content ;
			    }

		}
}

?>
