<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h2><?php echo $text_my_account; ?></h2>
      <ul class="list-unstyled">
        <li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
        <li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
        <li><a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
        <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
      </ul>
      <?php if ($credit_cards) { ?>
      <h2><?php echo $text_credit_card; ?></h2>
      <ul class="list-unstyled">
        <?php foreach ($credit_cards as $credit_card) { ?>
        <li><a href="<?php echo $credit_card['href']; ?>"><?php echo $credit_card['name']; ?></a></li>
        <?php } ?>
      </ul>
      <?php } ?>
      <h2><?php echo $text_my_orders; ?></h2>
      <ul class="list-unstyled">
        <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
        <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
        <?php if ($reward) { ?>
        <li><a href="<?php echo $reward; ?>"><?php echo $text_reward; ?></a></li>
        <?php } ?>
        <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
        <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
        <li><a href="<?php echo $recurring; ?>"><?php echo $text_recurring; ?></a></li>

				<!-- /****** Message System Starts *****/ -->
        <li><a href="<?php echo $message; ?>"><?php echo $text_message_system; ?>
							<span class="alert_messages">
								<?php if($alert_messages) { ?> 
									<b>(<?php echo $alert_messages ?>)</b>
								<?php } ?>
							</span>
						</a>
				</li>
				<!-- /****** Message System Ends *****/ -->
			
      </ul>
      <!-- -->
      <?php if ($seller == 1) { ?>
      <h2><?php echo $text_clerkad; ?></h2>
      <ul class="list-unstyled">
        <li><a href="<?php echo $seller_edit; ?>"><?php echo $text_selleredit; ?></a></li>
        <li><a href="<?php echo $product_add; ?>"><?php echo $text_product_add; ?></a></li>
        <li><a href="<?php echo $product_form; ?>"><?php echo $text_productlist; ?></a></li>
        <li><a href="<?php echo $download_add; ?>"><?php echo $text_download_add; ?></a></li>
        <li><a href="<?php echo $download_form; ?>"><?php echo $text_downloadlist; ?></a></li>
        <li><a href="<?php echo $orderlist; ?>"><?php echo $text_orderlist; ?></a></li>
        <li><a href="<?php echo $seller_transaction; ?>"><?php echo $text_transaction; ?></a></li>
        <li><a href="<?php echo $seller_shipping; ?>"><?php echo $text_sellershipping; ?></a></li>
        <li><a href="<?php echo $seller_coupon; ?>"><?php echo $text_coupon; ?></a></li>
        <li><a href="<?php echo $returnlist; ?>"><?php echo $text_return; ?></a></li>
      </ul>
      <?php } ?>
      <!-- -->
      <h2><?php echo $text_my_newsletter; ?></h2>
      <ul class="list-unstyled">
        <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
      </ul>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?> 
