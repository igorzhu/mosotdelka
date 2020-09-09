<div class="catalog">
    <h2 class="title">КАТАЛОГ ТОВАРОВ</h2>
    <?php $count = 1;?>
	<?php foreach ($categories as $category) { ?>
		<?php if ($count % 4 == 1) { ?>
			<?php echo '<div class="cards">'; ?>
		<?php } ?>
		<div class="card">
		    <div class="card__main">
		        <img src="/image/<?php echo $category['image']; ?>" alt="<?php echo $category['name'];?>">
		        <div class="card__caption card__caption--bottom">
		            <a href="<?php echo $category['href']; ?>"><p><?php echo $category['name'];?></p></a>
		        </div>
		    </div>
		    <?php if (!empty($category['children'])) { ?>
		    <div class="card__info categories">
		        <div class="categories__head">
		            <div class="card__caption card__caption--top">
		                <a href="<?php echo $category['href']; ?>"><p><?php echo $category['name'];?></p></a>
		            </div>
		        </div>
		        <div class="categories__body">
		            <ul class="categories__list">
		                <?php foreach ($category['children'] as $child) { ?>
			                <li>
			                    <a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
			                </li>
		                <?php } ?>
		            </ul>
		        </div>
		    </div>
		    <?php } ?>
		</div>

		<?php if ($count % 4 == 0) { ?>
			<?php echo '</div>'; ?>
		<?php } ?>
        
        <?php $count++; ?> 
	<?php } ?>
</div>
<?php if ($count % 4 != 1) echo '</div>'; ?>