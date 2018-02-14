<?php echo $header; ?>
<link type="text/css" rel="stylesheet" media="all" href="chat/css/chat.css" />
<div class="container">
<div id="tabs-container" style="padding: 0;">
  <?php echo $column_left; ?>
  <div class="tab  col-lg-9 col-sm-8" style="padding: 0;">     
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
        <?php $online_seller_array = array(); foreach ($products as $product) { ?>	
		<div class="col-md-4 col-sm-6 col-xs-12">    
		<a href="<?php echo $product['href']; ?>">
		<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>
		<div class="content_box">                   
		<div class="title_product">                 
		<h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4> 
		</div>                             
		<div class="replay">					
		<?php if ($product['price'] && $product['display_price']) { ?> 
		<h5><?php echo $product['price']; ?></h5>		
		<?php } ?> 
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
		<div class="profile-status offline seller_status_<?php echo $product['seller_details']['seller_id'];?>"></div> <p data-seller_id="<?php echo $product['seller_details']['seller_id'];?>" class="seller_status_p_<?php echo $product['seller_details']['seller_id'];?>">Offline</p>
		</div>
			<?php $online_seller_array[]=$product['seller_details']['seller_id'];?>
		<?php } ?>
		<div class="buttons clearfix">	
		<?php if(!empty($product['seller_details']) &&  $product['seller_details']['is_paid'] == 1){ ?>
			<a class="more_button replay_button col-md-6 chat_sellers" id="chat_sellers" href="javascript:void(0)" onclick="javascript:chatWith('<?php echo $product['seller_details']['seller_id'];?>','<?php echo $product['seller_details']['firstname'] . ' ' . $product['seller_details']['lastname'];?>')">Chat with seller</a>			
		<?php } else { ?>
			<a class="more_button replay_button col-md-6 fadeandscale_four_open" href="<?php echo $product['reply_link']; ?>">Chat with seller</a>			
		<?php } ?>
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
	  <?php $price_calc = array();?>
	  <?php if($org_products){?>
	  <?php foreach ($org_products as $org_product) { ?>	
	  <?php if ($org_product['price']) { ?> 
		<?php $org_price = substr($org_product['price'],1);?>
		<?php array_push($price_calc,$org_price);?>
	  <?php } ?>
	  <?php } ?>
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
<?php if(!empty($online_seller_array)){ ?>
	<?php $online_seller_array = array_unique($online_seller_array);?>
	<script>
	function check_seller_status(){
		var online_users = <?php echo json_encode($online_seller_array);?>;
		var classes = '';
		setTimeout(function () {
		$.ajax({
		  url: "index.php?route=account/account/checkstatus",
		  type: "POST",
		  data: 'online_users='+online_users,
		  dataType: "json",
		  success: function(data) {
			$.each(data, function(key,val){
				if(val==1){
					$('.seller_status_'+key).removeClass('offline').addClass('online');
					$('.seller_status_p_'+key).text('Online');
				} else {
					$('.seller_status_'+key).removeClass('online').addClass('offline');
					$('.seller_status_p_'+key).text('Offline');
				}
			});
		  },
		  complete:check_seller_status
		});
		}, 6000);
	}
	//check_seller_status();
	</script>
<?php } ?>
<?php if(!$logged){ ?>
<script>

$('.chat_sellers').removeAttr('onclick');

$('.chat_sellers').click(function(e){
	e.preventDefault();
	window.location = 'index.php?route=account/login';
});

</script>
<?php } ?>
<script>
jQuery(document).ready(function($){
	$("#scale-slider")
	.slider({
	min: <?php echo min($price_calc); ?> ,
			max: <?php echo max($price_calc); ?> ,
			range: true,
			values: [ <?php echo (isset($price_filter[0])?$price_filter[0]:0); ?> , <?php echo (isset($price_filter[1]) ? $price_filter[1]:max($price_calc)); ?> ]
	})

	.slider("pips", {
	rest: false,
			
			prefix: "$"
	})

	.slider("float");
});

</script>
<?php if($logged){ ?>
<script type="text/javascript" src="chat/js/catgchat.js"></script>
<?php } ?>
<?php echo $footer; ?>
