<div class="section-title">
   <h4><?php echo $heading_title; ?></h4>
</div>
<div id="feat" class="owl-carousel">

   <?php foreach ($products as $product) { ?>
     <div class="item">


         <div class="tov">
            <div class="tov-img">
               <?php if (!$product['special']) { ?>
               <?php } else { ?>
               <span>Акция</span>
               <?php } ?>
               <div class="image"><a href="<?php echo $product['href']; ?>"><img data-src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive lazyOwl" /></a></div>
               <div class="but-block">
                  <div onclick="cart.add('<?php echo $product['product_id']; ?>');" class="cart-b" ><?php echo $button_cart; ?></div>
                  <div data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" class="icon-b"><i class="fa fa-heart-o" aria-hidden="true"></i></div>
                  <div data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');" class="icon-b" ><i class="fa fa-exchange" aria-hidden="true"></i></div>
               </div>
            </div>
            <div class="caption">
               <h2><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h2>
               <p><?php echo $product['description']; ?></p>
               <?php if ($product['rating']) { ?>
               <div class=" rate">
                  <?php for ($i = 1; $i <= 5; $i++) { ?>
                  <?php if ($product['rating'] < $i) { ?>
                  <i class="fa fa-star-o" aria-hidden="true"></i>
                  <?php } else { ?>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <?php } ?>
                  <?php } ?>
               </div>
               <?php } ?>
               <?php if ($product['price']) { ?>
               <div class="price">
                  <?php if (!$product['special']) { ?>
                  <?php echo $product['price']; ?>
                  <?php } else { ?>
                  <?php echo $product['special']; ?> <span><?php echo $product['price']; ?></span>
                  <?php } ?>
                  <!--   <?php if ($product['tax']) { ?>
                     <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                     <?php } ?> -->
               </div>
               <?php } ?>
            </div>
         </div>
   

   </div>
   <?php } ?>

</div>

<script type="text/javascript"><!--
$('#feat').owlCarousel({
   items: 4,
   itemsDesktop : [1199,3],
   itemsDesktopSmall : [991,2],
   itemsTablet: [767, 2],
   itemsMobile: [478, 2],
   autoPlay: 3000,
   navigation: true,
   navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
   pagination: false,
   lazyLoad: true
});
--></script>