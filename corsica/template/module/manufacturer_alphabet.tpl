<?php if(isset($alphabet) && !empty($alphabet)){?>
<ul class="manufacturers_alphabet">
<li><b><?=$heading_title?>:</b></li>
	<?php foreach ($alphabet as $char => $manufacturers) { ?>
        <li class="char"><a href="<?=$url?>#<?=$char?>"><?php echo $char; ?></a>
		<?php if(isset($manufacturers) && is_array($manufacturers)){ ?>
			<div class="manufacturers_list">
				<?php foreach ($manufacturers as $manufacturer) { ?>
					<a href="<?php echo $manufacturer['href']; ?>"><?php echo $manufacturer['name']; ?></a>
				<?php } ?>
			</div>
		<?php } ?>
		</li>
	<?php } ?>
<li class="char">|</li>
<li><a href="<?=$url?>"><?php echo $text_all; ?></a></li>
</ul>
<?php } ?>