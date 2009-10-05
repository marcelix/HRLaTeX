<div id="sidebar">
 <ul>
  <li><h2>About</h2>
   <ul>
   This is the story of me and him and it and her. Actually this is where you give me the reader a primer on what all this tom foolery is all about, yes?
   </ul>
  </li>



<?php wp_list_pages('title_li=<h2>' . __('Pages') . '</h2>' ); ?>



<?php if (function_exists('wp_theme_switcher')) { ?>
<li><h2><?php _e('Themes'); ?></h2>
<?php wp_theme_switcher(); ?>
</li>
<?php } ?>


 
  <li><h2><?php _e('Categories'); ?></h2>
   <ul>
    <?php list_cats() ?>
   </ul>
  </li>

  <li><h2><?php _e('Links'); ?></h2>
   <ul>
    <?php get_links('-1', '<li>', '</li>', '<br />'); ?>
   </ul>
  </li>
  

 </ul>
</div>

