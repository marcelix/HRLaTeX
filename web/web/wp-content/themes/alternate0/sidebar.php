<!-- Begin #sidebar -->
<div id="sidebar"><div id="sidebar2">
  
  
  <!-- Begin #profile-container -->

<div class="sideText">This is where you can put some side text to say a little something about yourself.</div>
  <!-- End #profile -->

<ul><li></li></ul>

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

<ul><li></li></ul>

<h2 class="sidebar-title">Good Reading</h2>
<div class="sideText">
<a href="http://www.thoughtmechanics.com/blog/2005/03/09/learning-their-place/">Social Class</a><br />
<a href="http://www.berkeley.edu/news/media/releases/2003/10/27_lakoff.shtml">Framing the Issues</a><br />
<a href="http://www.asahi-net.or.jp/~zj5j-gttl/guns.htm">A Case for Gun Control</a><br />
<a href="http://members.aol.com/_ht_a/tma68/7lesson.htm">The Seven-Lesson Schoolteacher</a><br />
<a href="http://uts.cc.utexas.edu/~rjensen/freelance/whiteprivilege.htm">White Privilege Shapes the U.S.</a>
</div>

<ul><li></li></ul>

<script type="text/javascript"><!--
google_ad_client = "pub-1458978228413825";
google_alternate_ad_url = "http://www.thoughtmechanics.com/ctjive.html";
google_ad_width = 120;
google_ad_height = 240;
google_ad_format = "120x240_as";
google_ad_channel ="";

google_ad_type = "text";
google_color_border = "FFFFFF";
google_color_bg = "FFFFFF";
google_color_link = "000000";
google_color_url = "6699CC";
google_color_text = "000000";
//--></script>
<script type="text/javascript"
  src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script>

<ul><li></li></ul>

<p class="post-footer">
<em>Alternate 0 is based on blogger template <a href="http://www.stopdesign.com/portfolio/web_interface/blogger_templates.html?fs=1">Minima</a>, originally by <a href="http://www.stopdesign.com">Douglas Bowman</a>. Enhanced and ported to Wordpress by Theron Parlin of <a href="http://www.thoughtmechanics.com/blog">Thought Mechanics</a>.
</em></p>

<ul><li></li></ul>
  
<p class="post-footer"><em><a href="<?php bloginfo('url'); ?>/feed/" title="Syndicate this site using RSS">RSS</a> <a href="http://validator.w3.org/check/referer">XHTML</a> <a class="footerLink" href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a> <a href="http://www.contentquality.com/mynewtester/cynthia.exe?Url1=<?php bloginfo('url'); ?>">508</a></em></p>
  
<ul><li></li></ul>

</div></div>
<!-- End #sidebar -->


</div>
<!-- End #content -->




