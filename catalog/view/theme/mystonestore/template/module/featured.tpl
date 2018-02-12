<!--h3><?php echo $heading_title; ?></h3-->
<div class="row">
  <?php $online_seller_array = array(); foreach ($products as $product) { ?>
  <div class="col-lg-6 col-sm-6 col-xs-12"> 
	<div class="e_product">  
      <div class="e_product_images"> <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
      <div class="content_box">
            <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
		<div class="replay">
		<h5 class="col-md-12">
		<?php if ($product['price'] && $product['display_price']) { ?>
			<?php if (!$product['special']) { ?>
				<?php echo $product['price']; ?>
			<?php } else { ?>	
				<span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
			<?php } ?>	
			<?php /*if ($product['tax']) { ?>
			  <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
			 <?php }*/ ?>
		<?php } ?>
			</h5>
			<div class="row">
				<div class="col-xs-12">
					<?php for ($i = 1; $i <= 5; $i++) { ?>
					<?php if ($product['rating'] < $i) { ?>
					<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
					<?php } else { ?>
					<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
					<?php } ?>
					<?php } ?>
				</div>
			</div>



			<?php if(!empty($product['seller_details'])){ ?>
			
			<div class="e_online">
			<div class="col-md-7">
			<div class="profile-status offline seller_status_<?php echo $product['seller_details']['seller_id'];?>"></div> <p data-seller_id="<?php echo $product['seller_details']['seller_id'];?>" class="seller_status_p_<?php echo $product['seller_details']['seller_id'];?>">Offline</p>
			</div>
				<?php $online_seller_array[]=$product['seller_details']['seller_id'];?>
			<?php } ?>
			<?php if(!empty($product['seller_details']) &&  $product['seller_details']['is_paid'] == 1){ ?>
			<a class="col-md-5 more_button replay_button col-md-6 fadeandscale_four_open chat_sellers" id="chat_sellers" href="javascript:void(0)" onclick="javascript:chatWith('<?php echo $product['seller_details']['seller_id'];?>','<?php echo $product['seller_details']['firstname'] . ' ' . $product['seller_details']['lastname'];?>')">Chat</a>			
			<?php } else { ?>
				<!-- <a class="col-md-5 more_button replay_button col-md-6 fadeandscale_four_open" href="<?php echo $product['reply_link']; ?>">Chat</a> -->

<a class="col-md-5 more_button replay_button col-md-6 fadeandscale_four_open chat_sellers" id="chat_sellers" href="javascript:void(0)" onclick="javascript:chatWith('<?php echo $product['seller_details']['seller_id'];?>','<?php echo $product['seller_details']['firstname'] . ' ' . $product['seller_details']['lastname'];?>')">Chat</a>				
			<?php } ?>
			</div>
		</div>
    </div>
  </div>
  </div>
  <?php } ?>
</div>
<?php if(!$logged_in){ ?>
<script>
$('.chat_sellers').removeAttr('onclick');
$('.chat_sellers').click(function(e){
	e.preventDefault();
	window.location = 'index.php?route=account/login';
});

</script>
<?php } ?>
<?php if($logged_in){ ?>
<script type="text/javascript" src="chat/js/catgchat.js"></script>
<?php } ?>