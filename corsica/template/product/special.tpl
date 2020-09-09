<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <div class="section-title">
                  <h1><?php echo $heading_title; ?></h1>
               </div>

      
      <?php if ($products) { ?>

      
                     <section class="tov-sort">
      <div class="row">
        <div class="col-md-3 col-sm-6 hidden-xs">
          <div class="btn-group btn-group-sm">
            <button type="button" id="list-view" class="btn btn-blue btn-sm" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
            <button type="button" id="grid-view" class="btn btn-blue btn-sm" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
             <a href="<?php echo $compare; ?>" id="compare-total" class="btn btn-pink btn-sm"><i class="fa fa-exchange" aria-hidden="true"></i> <?php echo $text_compare; ?> </a>
          </div>
        </div>

        <div class="col-lg-3">
          <p><?php echo $results; ?></p>
        </div>
    
        <div class="col-md-4 col-xs-6">
          <div class="form-group input-group input-group-sm">
            <label class="input-group-addon" for="input-sort"><?php echo $text_sort; ?></label>
            <select id="input-sort" class="form-control" onchange="location = this.value;">
              <?php foreach ($sorts as $sorts) { ?>
              <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
              <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
              <?php } ?>
              <?php } ?>
            </select>
          </div>
        </div>
        <div class="col-md-2 col-xs-6">
          <div class="form-group input-group input-group-sm">
            <label class="input-group-addon" for="input-limit"><?php echo $text_limit; ?></label>
            <select id="input-limit" class="form-control" onchange="location = this.value;">
              <?php foreach ($limits as $limits) { ?>
              <?php if ($limits['value'] == $limit) { ?>
              <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
              <?php } ?>
              <?php } ?>
            </select>
          </div>
        </div>
      </div>
               </section>




               <div class="row" style="display:flex; flex-wrap: wrap;">
        <?php foreach ($products as $product) { ?>
        <div class="product-layout product-list col-xs-12">
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
        <?php } ?>
      </div>
      <div class="row">
        <div class="col-xs-12 text-center"><?php echo $pagination; ?></div>
      </div>



      
  <?php } else { ?>
        <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
  </div>
    <?php echo $column_right; ?></div>
</div>
    <?php echo $content_bottom; ?>
<?php echo $footer; ?>
