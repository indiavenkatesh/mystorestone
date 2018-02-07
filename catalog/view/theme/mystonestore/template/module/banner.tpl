<div id="banner<?php echo $module; ?>" class="slide_add">
  <?php foreach ($banners as $banner) { ?>
    <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /></a>
    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
    <?php } ?>
  <?php } ?>
</div>
<!--<script type="text/javascript">
$('#banner<?php echo $module; ?>').owlCarousel({
	items: 6,
	autoPlay: 3000,
	singleItem: true,
	navigation: false,
	pagination: false,
	transitionStyle: 'fade'
});
</script>-->
