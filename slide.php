<?php
$dir = "images/gallery";
$data = array();

$d = dir($dir);
while (false !== ($entry = $d->read())) {
   
   if (is_file($dir.'/'.$entry) && !strpos($entry,".db")) {
	   
		$data[] = $dir.'/'.$entry;   
   }
}
$d->close();


$dir = "images/gallery/small";
$data2 = array();

$d = dir($dir);
while (false !== ($entry = $d->read())) {
   
   if (is_file($dir.'/'.$entry) && !strpos($entry,".db")) {
	   
		$data2[] = $dir.'/'.$entry;   
   }
}
$d->close();


		//$text = '<a rel="example_group" title="'.$entry.'" href="'.$dir.'/'.$entry.'" target="_blank"><img src="'.$dir.'/'.$entry.'" border="0" style="height: 120px;" alt="Sample Title" title="Sample Title"/></a>';
		
		/*$text = '<div style="padding-top: 4px; padding-bottom: 4px;">
<a id="mb3" class="s5mb" href="images/media3_large.jpg" title="Image #1:">
<img class="padded" src="images/media3.jpg" border="0" style="float: left; cursor: pointer; margin-right: 16px; margin-bottom: 12px;" />
 </a>';*/
		
		
echo '<div style="padding-top: 4px; padding-bottom: 4px;">';
		
foreach($data as $key=>$value) {
	
	$text = '<a id="mb3" class="s5mb" href="'.$value.'" title="Image #'.$key.':">
<img class="padded" src="'.$data2[$key].'" border="0" style="float: left; cursor: pointer; margin-right: 12px; margin-bottom: 12px;" /></a>'."\n\n";
 
 	echo $text;	
}

echo '</div>';

//var_dump($data2);

?>