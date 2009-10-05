<?php /* Don't remove this line. */ require(ABSPATH . 'wp-blog-header.php'); ?>
 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 <html xmlns="http://www.w3.org/1999/xhtml">
 <head profile="http://gmpg.org/xfn/11">
  <title><?php bloginfo('name'); ?><?php wp_title(); ?></title>
  <meta http-equiv="Content-Type" content="text/html; charset=<?php bloginfo('charset'); ?>" />
  <meta name="generator" content="WordPress <?php bloginfo('version'); ?>" /> <!-- leave this for stats please -->
  <script src="<?php bloginfo('template_directory'); ?>/js_quicktags-mini.js" type="text/javascript"></script>
  <style type="text/css" media="screen">
   @import url( <?php bloginfo('stylesheet_url'); ?> );
  </style>
  <link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="<?php bloginfo('rss2_url'); ?>" />
  <link rel="alternate" type="text/xml" title="RSS .92" href="<?php bloginfo('rss_url'); ?>" />
  <link rel="alternate" type="application/atom+xml" title="Atom 0.3" href="<?php bloginfo('atom_url'); ?>" />
  <link rel="pingback" href="<?php bloginfo('pingback_url'); ?>" />
  <?php wp_get_archives('type=monthly&format=link'); ?>
  <?php //comments_popup_script(); // off by default ?>
  <?php wp_head(); ?>
 </head>

 <body>
  <a name = "top"></a>
  <div id="hnav">
   <div id="hmenu">	
    <ul id="top"> 
     <li><a href="#bottom" title="search in previous posts">search</a></li>
     <li><?php wp_loginout(); ?></li>
    </ul>
   </div>
   
   <div id="header">
    <h1 id="blogtitle">
     <a href="<?php bloginfo('url'); ?>"><?php bloginfo('name'); ?>
     </a>
    </h1>
   </div>
  </div> <!-- Closes the hnav div-->
 <div id="masthead" onclick="location.href='<?php bloginfo('url'); ?>';" style="cursor: pointer;">
</div>