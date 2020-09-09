 <div class="owl-carousel owl-theme owl-brands">
  <?php foreach ($banners as $banner) { ?>
     <div class="item">
        <a href="<?php echo $banner['link']; ?>">
          <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" />
        </a>
     </div>
  <?php } ?>             
</div>