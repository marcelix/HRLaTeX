<?php include "header.php"; ?>
 <div id="container">
  <div id="topcontent"></div>
  <div id="singlecontent">
   <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
    <div class="postnavigation">
     <div class="right">
      <?php next_post(' % &#187;','','yes') ?>
     </div>
     <div class="left">
      <?php previous_post('&#171; %','','yes') ?>
     </div>
    </div>
    <div class="singlepost">
     <div class="title" id="post-<?php the_ID(); ?>">
      <a href="<?php the_permalink() ?>" rel="bookmark">
       <?php the_title(); ?>
      </a>
     </div>
     <h3><span class="posted"><?php _e("Posted on "); ?></span>
      <?php the_time('l j F Y',display); ?>  
     </h3>
     <div class="storycontent">
      <?php the_content(__('(more...)')); ?>
     </div> <br/><?php wp_link_pages(); ?> 
    </div>
    <?php comments_template(); ?>
    <?php endwhile; else: ?>
    <p><?php _e('Sorry, no posts matched your criteria.'); ?></p>
   <?php endif; ?>
   <div id="bottomcontent"></div>
  </div>
 </div>
<?php include('footer.php'); ?>