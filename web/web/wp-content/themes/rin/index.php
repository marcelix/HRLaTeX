<?php include('header.php'); ?>
 <div id="container" class="clearfix">
  <?php include('sidebar.php'); ?>
  <div id="topcontentdouble"></div>
   <div id="content">
     <div class="contentright">
      <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
       <div class="post">
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
        </div>
        <div class="meta">
         <div class="author">
	      <?php the_author() ?> @ <?php the_time() ?> <?php edit_post_link(__('Edit This')); ?>

         </div>
         <?php _e("Filed under:"); ?> <?php the_category(' and') ?> 
        </div>
        <div class="feedback">
         <?php comments_popup_link(__('No Comments'), __('1 Comment'), __('% Comments')); ?>
        </div>
		<?php wp_link_pages(); ?> 
        <!--<?php trackback_rdf(); ?>  -->
       </div> <!-- Closes the post div-->
       <?php comments_template(); // Get wp-comments.php template ?>
	   <?php endwhile; else: ?>
       <?php _e('Sorry, no posts matched your criteria.'); ?>
       <?php endif; ?>
       <div class="postnavigation">
        <div class="rightdouble">
         <?php posts_nav_link('','','previous posts + &#187;') ?>
        </div>
        <div class="leftdouble">
         <?php posts_nav_link('','&#171; + newer posts ','') ?>
        </div>
       </div>
      </div> <!--Closes the contentright div-->
     </div> <!-- Closes the content div-->
     <div id="bottomcontentdouble">
    </div>
 </div> <!-- Closes the container div-->
<?php include('footer.php'); ?>