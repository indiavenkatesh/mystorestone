<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?></h1>
      <label class="control-label" for="input-search"><?php echo $entry_search; ?></label>
      <div class="row">
        <div class="col-sm-4">
          <input type="text" name="search" value="<?php echo $search; ?>" placeholder="<?php echo $text_keyword; ?>" id="input-search" class="form-control" />
        </div>		<div class="col-sm-4">			<input type="button" value="<?php echo $button_search; ?>" id="button-search" class="btn btn-primary" />        </div>
      </div>
      
      <h2><?php echo $text_search; ?></h2>
      <?php if ($products) { ?>
      <div class="row">        <?php foreach ($products as $product) { ?>				<div class="col-lg-6 col-sm-6 col-xs-12">       		<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" />    		<div class="content_box">                   		<div class="title_product">              		<h4 class="col-md-9"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>    		</div>              		<p><?php echo $product['description']; ?></p>     		<div class="replay">					<?php if ($product['price']) { ?>  		<h5><?php echo $product['price']; ?></h5>					<?php } ?>         		<div class="buttons">			<a class="more_button replay_button col-md-6 fadeandscale_four_open" href="#" data-popup-ordinal="0" id="open_76680227">Replay</a>				<a href="javascript::void(0);" class="more_button replay_button col-md-6" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></a>    		</div>                  		</div>               		</div>            		</div>        <?php } ?>      </div>
      <div class="row">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
      </div>
      <?php } else { ?>
      <p><?php echo $text_empty; ?></p>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<script type="text/javascript"><!--
$('#button-search').bind('click', function() {
	url = 'index.php?route=product/search';

	var search = $('#content input[name=\'search\']').prop('value');

	if (search) {
		url += '&search=' + encodeURIComponent(search);
	}

	var category_id = $('#content select[name=\'category_id\']').prop('value');

	if (category_id > 0) {
		url += '&category_id=' + encodeURIComponent(category_id);
	}

	var sub_category = $('#content input[name=\'sub_category\']:checked').prop('value');

	if (sub_category) {
		url += '&sub_category=true';
	}

	var filter_description = $('#content input[name=\'description\']:checked').prop('value');

	if (filter_description) {
		url += '&description=true';
	}

	location = url;
});

$('#content input[name=\'search\']').bind('keydown', function(e) {
	if (e.keyCode == 13) {
		$('#button-search').trigger('click');
	}
});

$('select[name=\'category_id\']').on('change', function() {
	if (this.value == '0') {
		$('input[name=\'sub_category\']').prop('disabled', true);
	} else {
		$('input[name=\'sub_category\']').prop('disabled', false);
	}
});

$('select[name=\'category_id\']').trigger('change');
--></script>
<?php echo $footer; ?>