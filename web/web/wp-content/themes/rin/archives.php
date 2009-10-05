<?php

/*

Template Name: Archives

*/

?>
<?php include "header.php"; ?>
 <div id="container">
  <div id="topcontent"></div>
  <div id="singlecontent">
   <div class="clearer"> </div>
    <div class="singlepost">
     <h2>Archives by Month:</h2>
     <ul>
      <?php wp_get_archives('type=monthly'); ?>
     </ul>
     <h2>Archives by Subject:</h2>
     <ul>
      <?php wp_list_cats(); ?>
     </ul>
    </div>	
   <div id="bottomcontent"> </div>
  </div>
 </div>
<?php include('footer.php'); ?>