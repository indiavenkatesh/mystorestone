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
<div class="wearehelp">  
	<h4>We Are Hear To help!</h4>   
	<p>Save Time And Let Us Provide You With Verified Contacts</p>    
	<button type="button" id="product_help" class="fadeandscale_three_open">Help</button>    
</div>
<div class="well" id="fadeandscale_three">   
	<h3>We Are Hear To Help !</h3>   
	<div class="helpingforms">
		<form id="requirement_form">
			<div class="form-group">
				<label for="exampleInputEmail1">Enter Product and Service Name</label>
				<input type="text-align" name="product_name" id="product_name" class="form-control" placeholder="Product and Service Name">
			</div>
			<div class="form-group form_quantity">
				<div class="input-group my-group form_quantity_group">
					<input type="text" class="form-control" name="product_qty" placeholder="Quantity">
					<select class="selectpicker form-control" id="unit" name="unit" title="Please select a unit ...">
						<option value="0">Unit</option>
						<option value="Unit 1">Unit 1</option>
						<option value="Unit 2">Unit 2</option>
						<option value="Unit 3">Unit 3</option>
						<option value="Unit 4">Unit 4</option>
						<option value="Unit 5">Unit 5</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<select class="selectpicker ammount_form form-control" id="order_value" name="order_value" title="Please select a order ...">
					<option value="0">Approximate Order Value (RS) </option>
					<option value="5000.22">5000.22</option>
					<option value="5440.26">5440.26</option>
					<option value="7400.29">7400.29</option>
					<option value="7440.4">7440.4</option>
					<option value="9940.45">9940.45</option>
				</select>
			</div>
			<div class="form-group">
				<label>Usage</label>
				<div class="checkbox col-md-4 col-xs-12">
					<label>
						<input type="checkbox" name="usage[]" value="Flooring">Flooring
					</label>
				</div>
				<div class="checkbox col-md-4 col-xs-12 find_other">
					<input type="text" class="form-control" id="usage" name="usage[]" value="" placeholder="other options">
				</div>
			</div>
			<div class="form-group">
				<label>Converage area(application)</label>
				<div class="checkbox col-md-4 col-xs-12">
					<label>
					<input type="checkbox" name="coverage_area[]" value="Bathroom">Bathroom 
					</label>
				</div>
				<div class="checkbox col-md-4 col-xs-12 find_other">
					<input type="text" class="form-control" id="coverage_area" name="coverage_area[]" value="" placeholder="other options">
				</div>
			</div>
			<div class="col-md-12 help_submit">
				<button type="button" id="help_submit_button" onclick="submit_requirement(this)" class="btn btn-primary">Submit Your Requirment</button>
			</div>
			<button type="button" class="close fadeandscale_three_close" aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
		</form>
	</div>
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
});function submit_requirement(){	$.ajax({		type: 'POST',		url: 'index.php?route=product/category/submitRequirement',		data: $('#requirement_form').serialize(),		beforeSend: function() {			$('#help_submit_button').attr('disabled', true);			$('#help_submit_button').text('loading...');					},		complete: function() {			$('#help_submit_button').attr('disabled', false);			$('#help_submit_button').text('Submit Your Requirment');		},		success: function(data) {			$('.alert').remove();			if (data['error']) {				console.log(data['error']);				$.each(data['error'] , function(i, val) { 				  $('#'+data['error'][i]).after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + val + '</div>');				});							}			if (data['success']) {				location.reload();			}		}	});}
</script>
