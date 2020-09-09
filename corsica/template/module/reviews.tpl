<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $template; ?>/stylesheet/<?php echo $extension; ?>.css" />
<div class="section-title">
   <h4>Отзывы о товарах</h4>
</div>
<div class="row testi">
   <?php foreach ($products as $product) { ?>
   <div class="product-layout col-lg-6 col-md-6 col-sm-6 col-xs-12">
      <div class="com">
         <div class="row">
            <div class="col-lg-5">
               <div class="image">
                  <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>
               </div>
            </div>
            <div class="col-lg-7 caption">
               <h2><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h2>
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
               <p><?php echo $product['description']; ?></p>
            </div>
         </div>
      </div>
   </div>
   <?php } ?>
</div>