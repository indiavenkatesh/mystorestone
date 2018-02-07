<?php echo $header; ?>
<div class="container">
<div id="tabs-container">
<div id="content" class="<?php echo $class; ?>"></div>
  <?php echo str_replace('<aside id="column-left" class="col-sm-3 hidden-xs">','<aside id="column-left" class="col-lg-3 col-sm-4 hidden-xs">',$column_left); ?>
  <div class="tab  col-lg-9 col-sm-8">     
   <div id="tab-1" class="tab-content">			
   <!--  <?php echo $content_top; ?>
      <h2><?php echo $heading_title; ?></h2>
      <?php if ($thumb || $description) { ?>
      <div class="row">
        <?php if ($thumb) { ?>
        <div class="col-sm-2"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" /></div>
        <?php } ?>
        <?php if ($description) { ?>
        <div class="col-sm-10"><?php echo $description; ?></div>
        <?php } ?>
      </div>
      <hr>
      <?php } ?>  -->
      <?php if ($categories) { ?>
      <h3><?php echo $text_refine; ?></h3>
      <?php if (count($categories) <= 5) { ?>
      <div class="row">
        <div class="col-sm-3">
          <ul>
            <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
      </div>
      <?php } else { ?>
      <div class="row">
        <?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>
        <div class="col-sm-3">
          <ul>
            <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
        <?php } ?>
      </div>
      <?php } ?>
      <?php } ?>
      <?php if ($products) { ?>
      <div class="row">
        <?php foreach ($products as $product) { ?>	
		<div class="col-lg-6 col-sm-6 col-xs-12">    
		<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" />
		<div class="content_box">                   
		<div class="title_product">                 
		<h4 class="col-md-9"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4> 
		</div>                    <p><?php echo $product['description']; ?></p>               
		<div class="replay">					
		<?php if ($product['price']) { ?>       
		<h5><?php echo $product['price']; ?></h5>		
		<?php } ?>                
		<div class="buttons">	
		<a class="more_button replay_button col-md-6 fadeandscale_four_open" href="#" data-popup-ordinal="0" id="open_76680227">Replay</a>			
		<a href="javascript::void(0);" class="more_button replay_button col-md-6" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></a>     
		</div>                 
		</div>                
		</div>            
		</div>
        <?php } ?>
      </div>
      <div class="row">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
      </div>
      <?php } ?>
      <?php if (!$categories && !$products) { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?></div></div>
    <?php echo $column_right; ?>
</div></div>
<?php echo $footer; ?>
