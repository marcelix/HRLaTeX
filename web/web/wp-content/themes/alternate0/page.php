<?php get_header(); ?>

<div id="main">
    <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
		<div class="post">
	    <div class="post-title"><?php the_title(); ?></div>
			<div class="entrytext">
				<?php the_content('<p class="serif">Read the rest of this page &raquo;</p>'); ?>
	
				<?php link_pages('<p><strong>Pages:</strong> ', '</p>', 'number'); ?>
	
			</div>
		</div>
	  <?php endwhile; endif; ?>


   </div>
<?php get_sidebar(); ?>
<?php get_footer(); ?>
