<div class="find_products"> 
	<h4>FIND A PRODUCT</h4>   
	<ul>       
		<li class="dropdown">    
			<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="product-filter"><?php echo (isset($_GET['product_filter'])) ? $_GET['product_filter'] : 'Product'; ?></span><span class="caret"></span></a> 
			<ul class="dropdown-menu product-menu">   
				<?php foreach($products_list as $products_rows){?>
				<li data-value='<?php echo $products_rows['product_id'];?>'><?php echo $products_rows['name'];?></li>  
			<?php } ?>
			</ul>   
		</li>  
		<?php foreach ($filter_groups as $filter_group) { ?>
		<li class="dropdown">  
			<?php 
			$active_filter = '';
			foreach ($filter_group['filter'] as $filter) { ?> 
			<?php if (in_array($filter['filter_id'], $filter_category)) { 
			$active_filter ='hide';
			?>	
			<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><?php echo $filter['name']; ?><span class="caret"></span></a>
			<?php } } ?>		  
			<a href="#" id="filtername<?php echo $filter_group['filter_group_id']; ?>" class="dropdown-toggle  <?php echo $active_filter;?>" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><?php echo $filter_group['name']; ?><span class="caret"></span></a>
			<ul class="dropdown-menu filter-menu" id="filter-group<?php echo $filter_group['filter_group_id']; ?>" data-filter-group="<?php echo $filter_group['filter_group_id']; ?>">   
				<?php foreach ($filter_group['filter'] as $filter) { ?> 
				<?php if (in_array($filter['filter_id'], $filter_category)) { ?>	
				<li class="current" data-value="<?php echo $filter['filter_id']; ?>"> <?php echo $filter['name']; ?></li>   
				<?php } else { ?>				
				<li data-value="<?php echo $filter['filter_id']; ?>"> <?php echo $filter['name']; ?></li>   
				<?php } } ?>
			</ul>    
		</li> 
		<?php } ?>
	</ul>
	<h4>PRICE</h4> 
	<ul>
		<li>
		<div id="filter-group1">
		<div id="scale-slider"></div>
		</div>
	</li>
	</ul>
	<form class="search_box" role="search">  
		<div class="input-group form-group add-on"> 
			<input type="hidden" name="filter" id="filter_value" value="<?php echo implode(',',$filter_category);?>" />  
			<input type="hidden" name="price_filter" id="price_filter_value" value="<?php echo implode(',',$filter_price);?>" />  
			<input type="hidden" name="product_filter" id="product_filter_value" value="<?php echo $product_filter;?>" />  
			<button type="submit" id="button-filter">search</button>    
		</div> 
	</form> 
</div>
<script type="text/javascript">
$('ul.filter-menu li').click(function(){
	var filter=[];	
	var filter_group_id = $(this).parent().attr('data-filter-group');
	$('#filtername'+filter_group_id).html($(this).text() +' <span class="caret"></span>');
	$(this).parent().children().removeClass('current');
	$(this).addClass('current');	
	$('li .current').each(function(element) {
		filter.push($(this).attr('data-value'));
	});
	$('#filter_value').val(filter.join(','));
	})
$('ul.product-menu li').click(function(e){
	e.preventDefault();	
	var filter_val = $(this).text();
	$('#product_filter_value').val(filter_val);
	$('.product-filter').text(filter_val);
})	
$('#button-filter').on('click', function(e) {
	e.preventDefault();	
	var url='';
	var filter_val = $('#filter_value').val();
	if(filter_val!=''){
		url += '&filter=' + filter_val;
	}
	var priceRange = [];
    $('#scale-slider .ui-slider-tip').each(function(){
		priceRange.push($(this).html());
    });
	$('#price_filter_value').val(priceRange.join(','));
	var price_filter_val = $('#price_filter_value').val();
	if(price_filter_val!=''){
		url += '&price_filter=' + price_filter_val;
	}
	var product_filter_val = $('#product_filter_value').val();
	if(product_filter_val!=''){
		url += '&product_filter=' + product_filter_val;
	}
	location = '<?php echo $action; ?>' + url;
});
</script>
