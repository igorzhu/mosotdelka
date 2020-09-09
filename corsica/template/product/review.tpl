<?php if ($reviews) { ?>
<?php foreach ($reviews as $review) { ?>
<table class="table table-striped table-bordered">
  <tr>
    <td style="width: 50%;"><strong><?php echo $review['author']; ?></strong></td>
    <td class="text-right"><?php echo $review['date_added']; ?></td>
  </tr>
  <tr>
    <td colspan="2"><p><?php echo $review['text']; ?></p>
 <div class="rate">
      <?php for ($i = 1; $i <= 5; $i++) { ?>
      
      <?php if ($review['rating'] < $i) { ?>
       <i class="fa fa-star-o" aria-hidden="true"></i>
      <?php } else { ?>
     <i class="fa fa-star" aria-hidden="true"></i>
      <?php } ?>
   
      <?php } ?>   </div></td>
  </tr>
</table>
<?php } ?>
<div class="text-right"><?php echo $pagination; ?></div>
<?php } else { ?>
<p><?php echo $text_no_reviews; ?></p>
<?php } ?>
