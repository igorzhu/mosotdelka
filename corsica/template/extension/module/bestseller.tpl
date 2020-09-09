<div class="side-title">
   <h4><?php echo $heading_title; ?></h4>
</div>
<?php foreach ($products as $product) { ?>
<div class="top">
   <div class="row">
      <div class="col-lg-4">
         <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
      </div>
      <div class="col-lg-8">
         <h2><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h2>
         <?php if ($product['price']) { ?>
         <div class="price">
            <?php if (!$product['special']) { ?>
            <?php echo $product['price']; ?>
            <?php } else { ?>
            <?php echo $product['special']; ?> <span class="price-old"><?php echo $product['price']; ?></span>
            <?php } ?>
            <?php if ($product['tax']) { ?>
            <small class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></small>
            <?php } ?>
         </div>
         <?php } ?>
         <?php if ($product['rating']) { ?>
         <div class="rating rate">
            <?php for ($i = 1; $i <= 5; $i++) { ?>
            <?php if ($product['rating'] < $i) { ?>
            <i class="fa fa-star-o" aria-hidden="true"></i>
            <?php } else { ?>
            <i class="fa fa-star" aria-hidden="true"></i>
            <?php } ?>
            <?php } ?>
         </div>
         <?php } ?>
         <a class="btn btn-wh btn-sm"  href="<?php echo $product['href']; ?>"> Подробнее</a>
      </div>
   </div>
</div>
<?php } ?>