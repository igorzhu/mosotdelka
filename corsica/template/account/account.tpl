<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
  <?php } ?>
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
      <h4><?php echo $text_my_account; ?></h4>
    </div>
      

<div class="row">
  <div class="col-lg-3">
  <div class="acc-box">
  <i class="fa fa-cog" aria-hidden="true"></i>
    <a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a>
  </div>
  </div>

  <div class="col-lg-3">
  <div class="acc-box">
  <i class="fa fa-unlock-alt" aria-hidden="true"></i>
    <a href="<?php echo $password; ?>"><?php echo $text_password; ?></a>
  </div>
  </div>


    <div class="col-lg-3">
  <div class="acc-box">
  <i class="fa fa-map-marker" aria-hidden="true"></i>
   <a href="<?php echo $address; ?>"><?php echo $text_address; ?></a>
  </div>
  </div>


    <div class="col-lg-3">
  <div class="acc-box">
<i class="fa fa-heart-o" aria-hidden="true"></i>
 <a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a>
  </div>
  </div>



</div>

    <?php if ($credit_cards) { ?>
<div class="section-title">
      <h4><?php echo $text_credit_card; ?></h4>
    </div>

    <div class="row">
          <div class="col-lg-3">
  <div class="acc-box">
<i class="fa fa-credit-card" aria-hidden="true"></i>
 <?php foreach ($credit_cards as $credit_card) { ?>
        <a href="<?php echo $credit_card['href']; ?>"><?php echo $credit_card['name']; ?></a>
        <?php } ?>
  </div>
  </div>
    </div>
      <?php } ?>


      <div class="section-title">
      <h4><?php echo $text_my_orders; ?></h4>
    </div>


    <div class="row">
  


    <div class="col-lg-3">
  <div class="acc-box">
<i class="fa fa-history" aria-hidden="true"></i>
 <a href="<?php echo $order; ?>"><?php echo $text_order; ?></a>
  </div>
  </div>

      <div class="col-lg-3">
  <div class="acc-box">
<i class="fa fa-cloud-download" aria-hidden="true"></i>
<a href="<?php echo $download; ?>"><?php echo $text_download; ?></a>
  </div>
  </div>

   <?php if ($reward) { ?>
        <div class="col-lg-3">
  <div class="acc-box">
<i class="fa fa-star" aria-hidden="true"></i>

<a href="<?php echo $reward; ?>"><?php echo $text_reward; ?></a>

  </div>
  </div>
        <?php } ?>


              <div class="col-lg-3">
  <div class="acc-box">
<i class="fa fa-undo" aria-hidden="true"></i>
<a href="<?php echo $return; ?>"><?php echo $text_return; ?></a>
  </div>
  </div>


                <div class="col-lg-3">
  <div class="acc-box">
<i class="fa fa-credit-card" aria-hidden="true"></i>
        <a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a>

  </div>
  </div>



                <div class="col-lg-3">
  <div class="acc-box">
<i class="fa fa-calendar" aria-hidden="true"></i>
<a href="<?php echo $recurring; ?>"><?php echo $text_recurring; ?></a>

  </div>
  </div>

                  <div class="col-lg-3">
  <div class="acc-box">
<i class="fa fa-envelope-o" aria-hidden="true"></i>

<a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a>

  </div>
  </div>

    </div>



 
     </div>
    <?php echo $column_right; ?></div>
</div>
 <?php echo $content_bottom; ?>
<?php echo $footer; ?> 