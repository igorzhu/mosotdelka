<div class="simplecheckout-block" id="simplecheckout_shipping_address" <?php echo $hide ? 'data-hide="true"' : '' ?> <?php echo $display_error && $has_error ? 'data-error="true"' : '' ?>>
  <?php if ($display_header) { ?>
    <div class="checkout-heading panel-heading"><?php echo $text_checkout_shipping_address ?></div>
  <?php } ?>
  <div class="simplecheckout-block-content">
    <?php foreach ($rows as $row) { ?>
      <?php echo $row ?>
    <?php } ?>
    <?php foreach ($hidden_rows as $row) { ?>
      <?php echo $row ?>
    <?php } ?>
  </div>
</div>
<link href="https://cdn.jsdelivr.net/npm/suggestions-jquery@20.1.1/dist/css/suggestions.min.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/suggestions-jquery@20.1.1/dist/js/jquery.suggestions.min.js"></script>