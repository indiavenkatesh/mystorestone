<?php if ($modules) { ?>
<div class="col-lg-3 col-sm-3 col-xs-12">
  <?php if(!isset($_GET['route']) || (isset($_GET['route']) && $_GET['route']=='common/home')){ ?><div class="left_cat"><?php } ?>
  <?php if(!isset($_GET['route']) || (isset($_GET['route']) && $_GET['route']=='product/category')){ ?><div class="slidebar tabs-menu"><?php } ?>
  <?php foreach ($modules as $module) { ?>
  <?php echo $module; ?>
  <?php } ?>
  <?php if(!isset($_GET['route']) || (isset($_GET['route']) && $_GET['route']=='common/home')){ ?></div><?php } ?>
  <?php if(!isset($_GET['route']) || (isset($_GET['route']) && $_GET['route']=='product/category')){ ?></div><?php } ?>
</div>
<?php } ?>