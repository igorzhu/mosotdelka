<?php if($name == 'Текст на главной') { ?>
	<div class="about">
		<h2 class="title"><?php echo $heading_title; ?></h2>
		<div class="text text--grey"><?php echo $html; ?></div>
	</div>
<?php } else { ?>
	<div>
		<?php if($heading_title) { ?>
			<h2><?php echo $heading_title; ?></h2>
		<?php } ?>
		<?php echo $html; ?>
	</div>
<?php } ?>