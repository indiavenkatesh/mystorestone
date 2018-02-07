<div class="top_cat">
    <h4>More Categories</h4>
	<ul>
	<?php foreach ($categories as $category) { ?>
		<li><a href="<?php echo $category['href']; ?>"><img src="<?php echo $category['thumb']; ?>" alt="<?php echo $category['name']; ?>" title="<?php echo $category['name']; ?>" class="" /><?php echo $category['name']; ?></a> </li>
	<?php } ?>
	</ul>
</div>
<a href="index.php?route=product/category&path=20" class="all_cat">See All Categories</a>
