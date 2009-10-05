<div id="sidebar">
		<ul>
			
			<li>
				<?php include (TEMPLATEPATH . '/searchform.php'); ?>
			</li>
			<!--  
			<li><h2><?php _e('Author'); ?></h2>
			<p>See the <a href="all-about-robin.php">All About Robin</a> page for more information about me!</p>
			</li> -->
			<li>
			<?php /* If this is a category archive */ if (is_category()) { ?>
			<p>You are currently browsing the archives for the <?php single_cat_title(''); ?> category.</p>
			
			<?php /* If this is a yearly archive */ } elseif (is_day()) { ?>
			<p>You are currently browsing the <a href="<?php echo get_settings('siteurl'); ?>"><?php echo bloginfo('name'); ?></a> weblog archives
			for the day <?php the_time('l, F jS, Y'); ?>.</p>
			
			<?php /* If this is a monthly archive */ } elseif (is_month()) { ?>
			<p>You are currently browsing the <a href="<?php echo get_settings('siteurl'); ?>"><?php echo bloginfo('name'); ?></a> weblog archives
			for <?php the_time('F, Y'); ?>.</p>

      <?php /* If this is a yearly archive */ } elseif (is_year()) { ?>
			<p>You are currently browsing the <a href="<?php echo get_settings('siteurl'); ?>"><?php echo bloginfo('name'); ?></a> weblog archives
			for the year <?php the_time('Y'); ?>.</p>
			
		 <?php /* If this is a monthly archive */ } elseif (is_search()) { ?>
			<p>You have searched the <a href="<?php echo get_settings('siteurl'); ?>"><?php echo bloginfo('name'); ?></a> weblog archives
			for <strong>'<?php echo wp_specialchars($s); ?>'</strong>. If you are unable to find anything in these search results, you can try one of these links.</p>

			<?php /* If this is a monthly archive */ } elseif (isset($_GET['paged']) && !empty($_GET['paged'])) { ?>
			<p>You are currently browsing the <a href="<?php echo get_settings('siteurl'); ?>"><?php echo bloginfo('name'); ?></a> weblog archives.</p>

			<?php } ?>
			</li>

			<?php wp_list_pages('title_li=<h2>' . 'Stranice' . '</h2>' ); ?>
			
			<li><h2><?php echo("Arhiva"); ?></h2>
				<ul>
				<?php wp_get_archives('type=monthly'); ?>
				</ul>
			</li>

			<li><h2><?php echo ("Kategorije"); ?></h2>
				<ul>
				<?php list_cats(0, '', 'name', 'asc', '', 1, 0, 1, 1, 1, 1, 0,'','','','','') ?>
				</ul>
			</li>
			<?php /* If this is the frontpage */ if ( is_home() || is_page() ) { ?>				
				<?php get_links_list(); ?>
				</ul>
				<?php get_calendar(); ?>
				<ul>
				<ul>
					<?php wp_register(); ?>
					<li><?php wp_loginout(); ?></li>
					
					
					<li><a href="http://wordpress.org/" title="<?php _e('Powered by WordPress, state-of-the-art semantic personal publishing platform.'); ?>">WordPress</a></li>
					<?php wp_meta(); ?>
				</ul>
				</li>
			<?php } ?>
			
		</ul>
	</div>
