<?php get_header(); ?>

<!-- Begin #main -->
<div id="main">

<!-- Begin .post -->
<?php $found=0; ?>
<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
<?php if (in_category(34) && !$single) { $found=1; ?>
<ul class="linklog">
<li><?php echo wptexturize($post->post_content); echo ' '; comments_popup_link('(0)', '(1)', '(%)' ) ?></li>
</ul>
<?php } else { ?>

<?php if ($found == 1) { ?>
<div style=" margin:.5em 0 1.5em; padding-bottom:1.5em; border-bottom:1px dotted #ccc;"></div>
<?php $found =0;} ?>

  <div class="post">
    <div class="post-title">
	 <a href="<?php the_permalink() ?>" style="text-decoration:none;" rel="bookmark" title="Permanent Link: <?php the_title(); ?>">
	 <?php the_title(); ?></a>
    </div>

<?php if ($single) { ?>
	<p style="margin-top: -25px;" class="post-footer">
	<em><?php the_category(',') ?></em>
	</p>
<?php } ?>

	         <div class="post-body">
	<div>
        <?php if($post->post_excerpt) { ?>
                 <div class="post-excerpt"><?php the_excerpt(); ?></div>
        <?php } ?>
      	<?php the_content(); ?>
    </div>
    </div>
    
    <p class="post-footer">
      <em>posted by <?php the_author() ?> on <a href="<?php the_permalink() ?>" title="permanent link"><?php the_time('m.d.y',display); ?></a> @ <?php the_time() ?></em> <a class="comment-link" href="<?php the_permalink() ?>#comments"><em><?php comments_popup_link(' 0 Comments', ' 1 Comment', ' % Comments', '', ''); ?></em></a><?php edit_post_link("edit", "&nbsp;<em>", "</em>"); ?>
    </p>
  

<?php comments_template(); // Get wp-comments.php template ?>
  </div>

<?php } ?>
<?php endwhile; else: ?>
<p><?php _e('Sorry, no posts matched your criteria.'); ?></p>
<?php endif; ?>
<!-- End .post -->

<?php if ($found == 1) { ?>
<div style=" margin:.5em 0 1.5em; padding-bottom:1.5em; border-bottom:1px dotted #ccc;"></div>
<?php $found =0;} ?>

  
 <div class="right"><?php posts_nav_link('','','previous &raquo;') ?></div>
 <div class="left"><?php posts_nav_link('','&laquo; newer ','') ?></div>

<br /><br />
</div>

<?php get_sidebar(); ?>
<?php get_footer(); ?>
