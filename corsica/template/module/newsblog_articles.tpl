<?php if ($heading_title) { ?>
<div class="side-title">
   <h4><?php echo $heading_title; ?></h4>
</div>
<?php } ?>
<?php if ($html) { ?>
<?php echo $html; ?>
<?php } ?>
<?php foreach ($articles as $article) { ?>
<div class="news">
   <?php if ($article['thumb']) { ?>
   <div class="image"><a href="<?php echo $article['href']; ?>"><img src="<?php echo $article['thumb']; ?>" alt="<?php echo $article['name']; ?>" title="<?php echo $article['name']; ?>" class="img-responsive" /></a></div>
   <?php } ?>
   <div class="news-pad">
      <div class="news-capt">
         <a href="<?php echo $article['href']; ?>">
            <h2><?php echo $article['name']; ?></h2>
         </a>
         <p>  <?php echo $article['preview']; ?></p>
         <a class="btn btn-bord" href="<?php echo $article['href']; ?>">подробнее</a>
      </div>
   </div>
</div>
<div class="clearfix"></div>
<?php } ?>