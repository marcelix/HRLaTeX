<!-- uncomment the "by <?php the_author(); ?> to put the author's name on the post -->
<div class="post">
		<h2 id="post-<?php the_ID(); ?>"><a href="<?php the_permalink(); ?>" rel="bookmark" title="Permanent link to <?php the_title();?>"><?php the_title(); ?></a></h2>
<small>Posted in <?php the_category(', '); ?> on <?php the_time('F jS, Y'); ?> 
<!-- by <?php the_author(); ?> --></small>
<div class="entry">
<?php the_content('Read the rest of this entry &raquo;'); ?></div>

<p class="postmetadata"><?php edit_post_link('uredi','','<strong>|</strong>'); ?><?php comments_popup_link(' komentari &#187;', '1 komentar &#187;', 'komentari (%) &#187;'); ?></p>
<?php trackback_rdf(); ?>
</div>