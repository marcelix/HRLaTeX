<div id="comments">

<br />
<div style="margin: 0 auto; padding-left: 66px; padding-bottom: 3px;">
<script type="text/javascript"><!--
google_ad_client = "pub-1458978228413825";
google_ad_width = 468;
google_ad_height = 60;
google_ad_format = "468x60_as";
google_ad_channel ="";
google_ad_type = "text";
google_color_border = "CCCCCC";
google_color_bg = "FFFFFF";
google_color_link = "000000";
google_color_url = "666666";
google_color_text = "333333";
//--></script>
<script type="text/javascript"
  src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script>
</div>

<?php if ( !empty($post->post_password) && $_COOKIE['wp-postpass_' . COOKIEHASH] != $post->post_password) : ?>
<p><?php _e('Enter your password to view comments.'); ?></p>
<?php return; endif; ?>

<dl id="comments-block">
<?php if ( comments_open() ) : ?>
<dd style="margin: 0px; padding: 0px;">
<p style="margin: 0px; margin-bottom: 1em; padding: 0px;"><b><?php comments_number(__('No Comments'), __('1 Comment'), __('% Comments')); ?> so far</b>
<?php else : // If there are no comments yet ?>
<?php endif; ?>
<?php if ( comments_open() ) : ?><br /> 
<a href="#postcomment" title="<?php _e("Leave a comment"); ?>">Leave a comment</a></p>
<?php endif; ?>
<a name="comments"></a>
<?php if ( $comments ) : ?>

<?php $myvar=0; ?>
<?php foreach ($comments as $comment) : ?>
<?php $myvar++; ?>
<?php if ($myvar == 1) {$swap = "background-color: #eeeee6; padding: 5px;";} ?>
<a name="comment-<?php comment_ID() ?>"></a>
<div class="commentBox" style="<?php echo $swap; ?>">

<?php comment_text() ?>

<p class="post-footer" style="margin-bottom: 0px; padding-bottom: 0px;"><em>By <?php comment_author_link() ?> on <?php comment_date('m.d.y') ?> <?php comment_time() ?> <?php edit_comment_link(__("e"), ''); ?> | <a href="#comment-<?php comment_ID() ?>">Permalink</a></em></p>
</div>

<?php if ($myvar == 1) {$myvar = -1; $swap = "background-color: #e5e5e5; padding: 5px;";} ?>
<?php endforeach; ?>

</dd>
</dl>

<div class="right"><?php comments_rss_link(__('<abbr title="Really Simple Syndication">RSS</abbr> feed for comments on this post.')); ?> 
<?php else : // If there are no comments yet ?>
<?php endif; ?>

<?php if ( pings_open() ) : ?>
	<a href="<?php trackback_url() ?>" rel="trackback"><?php _e('TrackBack <abbr title="Uniform Resource Identifier">URI</abbr>'); ?></a>
<?php endif; ?>
</div>

<br /><br />

<a name="postcomment"></a>
<?php if ( comments_open() ) : ?>
<b><?php _e('Leave a comment'); ?></b><br />
<?php _e("Line and paragraph breaks automatic, e-mail address never displayed, <acronym title=\"Hypertext Markup Language\">HTML</acronym> allowed:"); ?> <code><?php echo allowed_tags(); ?></code>

<form action="<?php echo get_settings('siteurl'); ?>/wp-comments-post.php" method="post" id="commentform">

	<p>
	  <input type="text" name="author" id="author" class="textarea" value="<?php echo $comment_author; ?>" size="15" tabindex="1" />
	   <label for="author"><?php _e('Name'); ?></label> <?php if ($req) _e('(required)'); ?>
	<input type="hidden" name="comment_post_ID" value="<?php echo $post->ID; ?>" />
	<input type="hidden" name="redirect_to" value="<?php echo htmlspecialchars($_SERVER['REQUEST_URI']); ?>" />
	</p>

	<p>
	  <input type="text" name="email" id="email" value="<?php echo $comment_author_email; ?>" size="15" tabindex="2" />
	   <label for="email"><?php _e('E-mail'); ?></label> <?php if ($req) _e('(required)'); ?>
	</p>

	<p>
	  <input type="text" name="url" id="url" value="<?php echo $comment_author_url; ?>" size="15" tabindex="3" />
	   <label for="url"><?php _e('<acronym title="Uniform Resource Identifier">URI</acronym>'); ?></label>
	</p>

	<p>
	  <label for="comment"><?php _e('Your Comment'); ?></label>
	<br />
	  <textarea name="comment" style="border: 1px solid #000;" id="comment" cols="50" rows="9" tabindex="4"></textarea>
	</p>

	<p>
		<input type="checkbox" name="subscribe" id="subscribe" value="subscribe">
		<label for="subscribe">Subscribe to comments (Email must be filled in)
		<br /><a href="http://www.thoughtmechanics.com/blog/wp-subscription-manager.php">Manage Subscriptions</a></label>
	</p>

	<p>
	  <input name="submit" id="submit" type="submit" tabindex="5" value="<?php _e('Say It!'); ?>" />
	</p>
	<?php do_action('comment_form', $post->ID); ?>
</form>

<?php else : // Comments are closed ?>

<?php endif; ?>
</div>
