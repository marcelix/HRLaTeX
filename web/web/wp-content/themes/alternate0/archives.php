<?php
/*
Template name: Archives
*/
?>


<?php get_header(); ?>

  <h2 class="sidebar-title">Posts by Author</h2>

<form action="">
<p style="padding: 0px; margin: 0px;"><select name="snPageName">
<option value="">Choose an Author</option>
<option value="/blog/author/theron/">Theron Parlin</option>
<option value="/blog/author/scott/">Scott Jones</option>
<option value="/blog/author/mav/">Mav Block</option>
<option value="/blog/author/geoff/">Geoff Ball</option>
<option value="/blog/author/freedom/">Freedom R. Dumlao</option>
<option value="/blog/author/april/">April D. Spreeman</option>
</select>
 <input type="button" value="GO" onclick="showSitePage(this.form)" /></p>
</form>
<!-- http://www.thoughtmechanics.com/blog/author/theron/ -->

  <h2 class="sidebar-title">Categories</h2>

<form action="/blog/index.php<?php echo $PHP_SELF ?>" method="get">
<p style="padding: 0px; margin: 0px;"><?php dropdown_cats(); ?>
<input type="submit" name="submit" value="GO" /></p>
</form>

  <h2 class="sidebar-title">Archives</h2>

<form id="archiveform" action="<?php echo $PHP_SELF ?>" method="post">
<p style="margin: 0px; padding: 0px;"><select id="archive_chrono">
<option value="">Archives by Month</option>
<?php get_archives("monthly","","option","","",false); ?>
</select>
<input type="button" value="GO" onclick="window.location = (document.forms.archiveform.archive_chrono[document.forms.archiveform.archive_chrono.selectedIndex].value);" /></p>
</form>

<h2 class="sidebar-title">Search</h2>
<form style="padding: 0px; margin-top: 0px; margin-bottom: 0px;" id="searchform" method="get" action="<?php bloginfo('url'); ?>">
<p style="padding: 0px; margin-top: 0px; margin-bottom: 0px;"><input type="text" class="input" name="s" id="search" alt="Search" size="20" />
<input name="submit" type="submit" tabindex="5" value="<?php _e('GO'); ?>" /></p>
</form>

<!-- Begin #main -->
<div id="main3">

<?php smartArchives() ?>

</div>


<?php get_sidebar(); ?>
<?php get_footer(); ?>