<?php include "header.php"; ?>
 <div id="container">
  <div id="topcontent"></div>
  <div id="singlecontent">
   <div class="singlepost">
    <?php if (have_posts()) : ?>
     <h2 class="searchresult">Search Results</h2>
     <div class="searchdetails"> Search results for "<?php echo ""."$s"; ?>" </div>
      <?php while (have_posts()) : the_post(); ?>
       <h2 class="searchresult">
        <a href="<?php the_permalink() ?>" rel="bookmark" title="Permanent Link to <?php the_title(); ?>">
         <?php the_title(); ?>
        </a>
       </h2>
       <div class="searchinfo"><?php _e("("); ?> <?php the_category(' and') ?> <?php _e(")"); ?></div>
       <div class="clearer"> </div>
       <?php the_excerpt() ?>
       <div class="searchinfo">
	    <a href="<?php the_permalink() ?>" rel="bookmark" title="Permanent Link to <?php the_title(); ?>">(to view associated entry please click here)
	    </a>
	   </div>
      <?php endwhile; ?>
     <?php else : ?>
      Not Found
    <?php endif; ?>
   </div> <!-- closes post div -->
   <div class="postnavigation">
    <div class="right">
     <?php posts_nav_link('','','previous posts + »') ?>
    </div>
    <div class="left">
     <?php posts_nav_link('','« + newer posts ','') ?>
    </div>
   </div>
   <div id="bottomcontent"> </div>
  </div>  <!-- closes content div -->
 </div>  <!-- closes container div -->
<?php include "footer.php"; ?>