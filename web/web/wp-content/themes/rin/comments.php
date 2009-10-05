<div id="response">
 <?php if ( !empty($post->post_password) && $_COOKIE['wp-postpass_' . COOKIEHASH] != $post->post_password) : ?>
  <p><?php _e('Enter your password to view comments.'); ?></p>
 <?php return; endif; ?>
 <?php if ( comments_open() ) : ?>
  <?php if (( $comments ) and ( comments_open() )): ?>
   <h2 align="center" id="comments">
    <?php comments_number(__('No Comments'), __('1 Comment'), __('% Comments')); ?> for '<?php the_title(); ?>'
    <!-- <a href="#postcomment" title="<?php _e("Leave a comment"); ?>">&raquo;</a>-->
   </h2>
  <?php endif; ?>
 <?php endif; ?>

 <?php if ( $comments ) : ?>
  <ol id="commentlist">
   <?php foreach ($comments as $comment) : ?>
    <li id="comment-<?php comment_ID() ?>">
     <div class="clearer">&nbsp;</div>
      <div class="commentname">
       <span class="commentauthor">
	    <?php comment_author_link() ?>
	   </span>
      </div>
      <div class="commentinfo">
       <span class="commentdate">
        <?php comment_date() ?> |
         <a href="#comment-<?php comment_ID() ?>" title="comment link url">
          <?php comment_time() ?>
         </a>
        <?php edit_comment_link(__("Edit This"), ' |'); ?>
       </span>
      </div>
      <div class="clearer">&nbsp;</div>
      <div class="commenttext">
       <?php comment_text() ?> 
      </div>
     </li>
    <?php endforeach; ?>
   </ol>
  <?php elseif ( comments_open() ) : // If there are no comments yet ?>

  <div id="nocomment">
   <p>
    <?php _e('No comments have been added to this post yet.'); ?>
   </p>
  </div>
 <?php endif; ?>
 
 <?php if ( comments_open() ) : ?>
  <h2 id="postcomment">
   <?php _e('Leave a comment'); ?>
  </h2>
   <form action="<?php echo get_settings('siteurl'); ?>/wp-comments-post.php" method="post" id="commentform">
  
  <script type="text/javascript">
    function ShowInfo() {
	 document.getElementById("authorinfo").style.display = "";
	 document.getElementById("showinfo").style.display = "none";
	 document.getElementById("hideinfo").style.display = "";
    }

    function HideInfo() {
	 document.getElementById("authorinfo").style.display = "none";
	 document.getElementById("showinfo").style.display = "";
	 document.getElementById("hideinfo").style.display = "none";
    }
   </script>
  
  <?php if ($comment_author != "") { ?>
	 <p>Welcome back <strong><?php echo $comment_author; ?></strong>
	  <span id="showinfo">(<a href="javascript: ShowInfo();">Change</a>)</span>
	  <span id="hideinfo" style="display:none;">(<a href="javascript: HideInfo();">Close</a>)</span>
     </p>
 	 <div id="authorinfo" style="display: none;">

    <?php } else { ?>
 <div id="inputboxhide">
    <?php } ?>
  
   <div id="commentboxes">
    <p>
     <label for="author"><?php _e('Name'); ?></label>
     <?php if ($req) _e('(required)'); ?> <br />
     <input type="text" name="author" id="author" class="textarea" value="<?php echo $comment_author; ?>" size="28" tabindex="1" />
     <input type="hidden" name="comment_post_ID" value="<?php echo $post->ID; ?>" />
     <input type="hidden" name="redirect_to" value="<?php echo htmlspecialchars($_SERVER['REQUEST_URI']); ?>" />
    </p>
    <p>
     <label for="email"><?php _e('E-mail'); ?></label>
     <?php if ($req) _e('(required)'); ?> <br />
     <input type="text" name="email" id="email" value="<?php echo $comment_author_email; ?>" size="28" tabindex="2" />
    </p>
   
    <p>
     <label for="url"><?php _e('<acronym title="Uniform Resource Identifier">Website URI (optional)</acronym>'); ?></label><br />
     <input type="text" name="url" id="url" value="<?php echo $comment_author_url; ?>" size="28" tabindex="3" />
    </p>
   </div>

 <p class="instructions"><?php _e("<b>Information for comment users</b><br />Line and 
  paragraph breaks are implemented automatically. Your e-mail address is <b>never</b> displayed. 
  Please consider what you're posting.<br /><br />
  Use the buttons below to customise your comment.
  <!--<acronym title=\"Hypertext Markup Language\">HTML</acronym> allowed:"); ?>
  <code><?php echo allowed_tags(); ?></code>-->
 </p>
  </div> <!-- Closes the remember author function -->
<div id="inputbox">
 <p class="inputbox">
  <label for="comment"><?php _e('Please type your comment here'); ?></label>

  <br />
   <script type="text/javascript">edToolbar();</script>
   <textarea name="comment" id="comment" cols="80" rows="7" tabindex="4"></textarea>
   <script type="text/javascript">var edCanvas = document.getElementById('comment');</script>
 </p>
</div>

<div id="button">
 <input name="submit"  type="submit"  tabindex="5" value="<?php _e('Add my comment'); ?>" />
</div>

<p class="feeds"><?php comments_rss_link(__('<abbr title="Really Simple Syndication">RSS</abbr> feed for comments on this post')); ?> |
 <?php if ( pings_open() ) : ?>
  <a href="<?php trackback_url() ?>" rel="trackback">
   <?php _e('TrackBack <abbr title="Uniform Resource Identifier">URI</abbr>'); ?>
  </a>
 <?php endif; ?>
</p>


</form>
 <div id="commentsbottom">&nbsp;</div>
   <?php else : // Comments are closed ?>
  <div id="commentsclosed">
   <p>
    <?php _e('Sorry, the comment form is closed at this time.'); ?>
   </p>
  </div>
 <?php endif; ?>
 </div> <!-- closes the response div -->