<a name = "bottom"></a>
<div id="footer">
 <div id="menu">
  <form id="searchform" method="get" action="<?php echo $PHP_SELF; ?>">
   <input id="searchbutton" type="submit" name="submit" value="<?php _e('Search'); ?>" />
   <input type="text" name="s" id="search" size="15" />
  </form> 
 <div id="topimage"> 
  <a href="#"></a>  
 </div>
</div>
 <p class="credits"><a href="<?php bloginfo('url'); ?>"><?php bloginfo('name'); ?></a> is 2005 <?php the_author() ?>. 
  <a href="http://www.brokenkode.com/manji">Rin</a> by Khaled Abou Alfa and Joshua.  
   You can syndicate <br /> both the entries using <a href="<?php bloginfo('rss2_url'); ?>" title="<?php _e('Syndicate this site using RSS'); ?>">
   <?php _e('<abbr title="Really Simple Syndication">RSS</abbr>'); ?></a> and the <a href="<?php bloginfo('comments_rss2_url'); ?>">Comments (RSS)
  </a>. 
  <a href="http://validator.w3.org/check/referer">xhtml 1.0 trans </a>/ 
  <a href="http://jigsaw.w3.org/css-validator/check/referer">CSS </a>. 
  <?php echo sprintf(__("Proudly powered by <a href='http://wordpress.org' title='%s'><strong>WordPress</strong></a>"), __("Powered by WordPress, state-of-the-art semantic personal publishing platform")); ?>.
 </p>
 <p class="wordpress"></p>
</div>
<?php do_action('wp_footer', ''); ?>
</body>
</html>