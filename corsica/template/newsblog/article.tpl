<?php echo $header; ?>
<div class="container">
   <ul class="breadcrumb">
      <?php foreach ($breadcrumbs as $breadcrumb) { ?>
      <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
      <?php } ?>
   </ul>
   <div class="row">
      <?php echo $column_left; ?>
      <?php if ($column_left && $column_right) { ?>
      <?php $class = 'col-sm-6'; ?>
      <?php } elseif ($column_left || $column_right) { ?>
      <?php $class = 'col-sm-9'; ?>
      <?php } else { ?>
      <?php $class = 'col-sm-12'; ?>
      <?php } ?>
      <div id="content" class="<?php echo $class; ?>">
         <?php echo $content_top; ?>
         <div style="margin-bottom: 35px;" class="text-block">
            <div class="row">
               <div class="col-sm-12">
                  <h1><?php echo $heading_title; ?></h1>
                  <?php echo $preview;?>
                  <?php echo $description; ?>
               </div>
            </div>
         </div>
         <?php if ($articles) { ?>
         <div class="section-title">
            <h4><?php echo $text_related; ?></h4>
         </div>
         <div class="row">
            <?php foreach ($articles as $article) { ?>
            <div class="product-layout product-list col-lg col-md-4 col-sm-6 col-xs-12">
               <div class="tov">
                  <div class="product-thumb">
                     <div class="caption">
                        <h2><a href="<?php echo $article['href']; ?>"><?php echo $article['name']; ?></a></h2>
                        <p><?php echo $article['preview']; ?></p>
                        <?php if ($article['attributes']) { ?>
                        <h5><?php echo $text_attributes;?></h5>
                        <?php foreach ($article['attributes'] as $attribute_group) { ?>
                        <?php foreach ($attribute_group['attribute'] as $attribute_item) { ?>
                        <b><?php echo $attribute_item['name'];?>:</b> <?php echo $attribute_item['text'];?><br />
                        <?php } ?>
                        <?php } ?>
                        <?php } ?>
                     </div>
                  </div>
               </div>
            </div>
            <?php } ?>
         </div>
         <?php } ?>
         <?php if ($products) { ?>
         <div class="section-title">
            <h4><?php echo $text_related_products; ?></h4>
         </div>
         <div class="row">
            <?php $i = 0; ?>
            <?php foreach ($products as $product) { ?>
            <?php if ($column_left && $column_right) { ?>
            <?php $class = 'col-lg-6 col-md-6 col-sm-12 col-xs-12'; ?>
            <?php } elseif ($column_left || $column_right) { ?>
            <?php $class = 'col-lg-4 col-md-4 col-sm-6 col-xs-12'; ?>
            <?php } else { ?>
            <?php $class = 'col-lg-3 col-md-3 col-sm-6 col-xs-12'; ?>
            <?php } ?>
            <div class="<?php echo $class; ?>">
               <div class="product-thumb transition">
                  <div class="tov">
                     <div class="tov-img">
                        <?php if (!$product['special']) { ?>
                        <?php } else { ?>
                        <span>Акция</span>
                        <?php } ?>
                        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
                        <div class="but-block">
                           <div onclick="cart.add('<?php echo $product['product_id']; ?>');" class="cart-b" ><?php echo $button_cart; ?></div>
                           <div data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" class="icon-b" href=""><i class="fa fa-heart-o" aria-hidden="true"></i></div>
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
            </div>
            <?php if (($column_left && $column_right) && ($i % 2 == 0)) { ?>
            <div class="clearfix visible-md visible-sm"></div>
            <?php } elseif (($column_left || $column_right) && ($i % 3 == 0)) { ?>
            <div class="clearfix visible-md"></div>
            <?php } elseif ($i % 4 == 0) { ?>
            <div class="clearfix visible-md"></div>
            <?php } ?>
            <?php $i++; ?>
            <?php } ?>
         </div>
         <?php } ?>
         <?php if ($tags) { ?>
         <p><?php echo $text_tags; ?>
            <?php for ($i = 0; $i < count($tags); $i++) { ?>
            <?php if ($i < (count($tags) - 1)) { ?>
            <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
            <?php } else { ?>
            <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
            <?php } ?>
            <?php } ?>
         </p>
         <?php } ?>
      </div>
      <?php echo $column_right; ?>
   </div>
</div>
<script type="text/javascript"><!--
   $(document).ready(function() {
    $('.thumbnails').magnificPopup({
      type:'image',
      delegate: 'a',
      gallery: {
        enabled:true
      }
    });
   });
   //-->
</script>
<?php echo $content_bottom; ?>
<?php echo $footer; ?>