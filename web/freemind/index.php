<?php

$mindmap_name = "hrlatex_mindmap.mm";



if ( $_SERVER['HTTPS'] ) {
		$prefix="https://";
	}
	else
	{
		$prefix = "http://";
	}

	$url_info = pathinfo($_SERVER['PHP_SELF']);

	$script_url = $prefix.$_SERVER['SERVER_NAME'].$url_info['dirname'].'/';
	echo "<small>$script_url</small>";

	$mindmap_url = $script_url.$mindmap_name;

?><!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML//EN">
<html>




<head>
  <title>Mind Map</title>
</head>


<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<img src="/cgi-bin/mimetex.cgi?f(x)=x^2" />
  <APPLET CODE="freemind.main.FreeMindApplet.class"
          ARCHIVE="freemindbrowser.jar" WIDTH="100%" HEIGHT="100%">
  <PARAM NAME="type" VALUE="application/x-java-applet;version=1.4">
  <PARAM NAME="scriptable" VALUE="false">
  <PARAM NAME="modes" VALUE="freemind.modes.browsemode.BrowseMode">
  <?php /* --------------------------------------------------------*/  ?>
  <PARAM NAME="browsemode_initial_map" VALUE="<?php echo $mindmap_url; ?>">

  <param NAME="initial_mode" VALUE="Browse">
  <param NAME="selection_method" VALUE="selection_method_direct">
</applet>


</body>
</html>


