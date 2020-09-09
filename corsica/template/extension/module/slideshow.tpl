<section class="banner">
<div class="wrapper">

  <section class="variable slider">
      <?php foreach ($banners as $banner) { ?>
          <div>
          <div class="maim-banner_item" style="width: 100%; display: inline-block;">
      <img class="" src="<?php echo $banner['image']; ?>" alt="">
      <span class="maim-banner_item-text"><span><?php echo $banner['title']; ?></span><?php echo $banner['link']; ?></span>
    </div></div>
  <?php } ?>


  </section>

</div>
</section>
