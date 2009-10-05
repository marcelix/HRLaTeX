<?php include('header.php'); ?>
 <div id="container" class="clearfix">
  <?php include('sidebar.php'); ?>
  <div id="topcontentdouble"></div>
   <div id="content">
     <div class="contentright">
      <div class="post">
      <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
       <?php the_content(); ?>
      <?php endwhile; endif; ?>
      </div>  
      </div>
     </div>
     <div id="bottomcontentdouble">
    </div>
 </div> <!-- Closes the container div-->
<?php include('footer.php'); ?>