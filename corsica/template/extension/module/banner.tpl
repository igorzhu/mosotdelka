<div id="banner<?php echo $module; ?>" class="owl-carousel">
  <?php foreach ($banners as $banner) { ?>
  <div class="item">
    <?php if ($banner['link']) { ?>
     <div class="top-box">
                  <a href="<?php echo $banner['link']; ?>">  <img data-src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive lazyOwl" /></a>
                  <div class="top-box-cation">
                     <h4><?php echo $banner['title']; ?></h4>
                     <a class="btn btn-bord visible-lg " href="<?php echo $banner['link']; ?>">перейти</a>
                  </div>
               </div>
    <?php } else { ?>
       <div class="top-box">
                   <img data-src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive lazyOwl" />
                  <div class="top-box-cation">
                     <h4><?php echo $banner['title']; ?></h4>
                  </div>
               </div>
    <?php } ?>
  </div>
  <?php } ?>
</div>
<script type="text/javascript"><!--
$('#banner<?php echo $module; ?>').owlCarousel({
	items: 6,
	singleItem: true,
	navigation: true,
	pagination: false,
  navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
  autoPlay: 6000,
  lazyLoad: true
});
--></script>
