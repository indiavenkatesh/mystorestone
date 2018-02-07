<?php echo $header; ?>
<link type="text/css" rel="stylesheet" media="all" href="chat/css/chat.css" />
<div class="container"> 
<div id="tabs-container">
	<div class="row">
		<div class="table_all">
 <div class="title_table"><h2>Red Alert Zone</h2></div>
 <div class="row">
   <!-- <div class="col-lg-6 col-sm-6 col-xs-12 table_search">
    <form class="navbar-form" role="search">
      <div class="input-group add-on">
        <input class="form-control" placeholder="Search" name="srch-term" id="srch-term" type="text">
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
        </div>
      </div>
    </form>
  </div> -->
  <!-- <div class="col-lg-6 col-sm-6 col-xs-12">
    <h2> <a href="#"> Add New Red Alert details</a></h2>
  </div> -->
</div>
<div class=" table_page">
 <table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">SL No</th>
      <th scope="col">Heading</th>
      <th scope="col">Representative</th>
      <th scope="col">Company</th>
      <th scope="col">Country</th>
    </tr>
  </thead>
  <tbody>
  	<?php foreach($redlists as $key => $redzone){ ?>
    <tr>
      <th scope="row"><?php echo $key+1; ?></th>
      <td><a href="<?php echo $redzone['detail_url']; ?>"><?php echo $redzone['heading']; ?></a></td>
      <td><a href="<?php echo $redzone['detail_url']; ?>"><?php echo $redzone['frauder']; ?></a></td>
      <td><a href="<?php echo $redzone['detail_url']; ?>"><?php echo $redzone['company']; ?></a></td>
      <td><a href="<?php echo $redzone['detail_url']; ?>"><?php echo $redzone['country']; ?></a></td>
    </tr>
    <?php } ?> 
  </tbody>
</table>
</div>
</div> 
</div>
<div class="no_row">
<?php if ($error_warning) { ?>
<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
  <button type="button" class="close" data-dismiss="alert">&times;</button>
</div>
<?php } ?>
<?php if ($success) { ?>
<div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
  <button type="button" class="close" data-dismiss="alert">&times;</button>
</div>
<?php } ?>
<form action="<?php echo $action; ?>" method="post" name="redzone" id="redzone" enctype="multipart/form-data" class="form-horizontal">
  <h4>Add Fraud Company</h4>
  <div class="form-group">
    <label for="heading">heading</label>
    <input type="text" class="form-control" id="heading" name="heading" aria-describedby="emailHelp" placeholder="Enter Heading" value="<?php echo $heading; ?>">
    <div class="text-danger"><?php echo $error_heading; ?></div>
  </div>
  
  <div class="form-group">
    <label for="companyname">Fraud company</label>
    <input type="text" class="form-control" id="companyname" name="companyname" aria-describedby="emailHelp" placeholder="Enter company" value="<?php echo $companyname; ?>">
    <div class="text-danger"><?php echo $error_companyname; ?></div>
  </div>
  <div class="form-group">
    <label for="fraudername">Name of Fraudster</label>
    <input type="text" class="form-control" id="fraudername" name="fraudername" aria-describedby="fraudername" placeholder="Enter Fraudster Name" value="<?php echo $fraudername; ?>">
    <div class="text-danger"><?php echo $error_fraudername; ?></div>
  </div>
  <div class="form-group">
    <label for="email">Email</label>
    <input type="text" class="form-control" id="email" name="email" aria-describedby="email" placeholder="Enter Email" value="<?php echo $email; ?>">
    <div class="text-danger"><?php echo $error_email; ?></div>
  </div>
  <div class="form-group">
    <label for="contact">Contact No</label>
    <input type="text" class="form-control" id="contact" name="contact" aria-describedby="contact" placeholder="Enter Contact No" value="<?php echo $contact; ?>">
    <div class="text-danger"><?php echo $error_contact; ?></div>
  </div>
  <div class="form-group">
    <label for="exampleSelect1">Select Country </label>
    <select class="form-control" id="exampleSelect1" name="country">
		<option value=""><?php echo $text_select; ?></option>
		<?php foreach ($countries as $country) { ?>
		<?php if ($country['country_id'] == $country_id) { ?>
		<option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
		<?php } else { ?>
		<option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
		<?php } ?>
		<?php } ?>
    </select>
    <div class="text-danger"><?php echo $error_country; ?></div>
  </div>
  <div class="form-group">
    <label for="place">Place</label>
    <input type="text" class="form-control" id="place" name="place" aria-describedby="place" placeholder="Enter Place" value="<?php echo $place; ?>">
    <div class="text-danger"><?php echo $error_place; ?></div>
  </div>
  <div class="form-group">
    <label for="exampleTextarea">Description</label>
    <textarea class="form-control" id="exampleTextarea" name="description" rows="3"><?php echo $description; ?></textarea>
    <div class="text-danger"><?php echo $error_description; ?></div>
  </div>
  <div class="form-group">
    <label for="exampleInputFile">Evidence</label>
    <input type="file" class="form-control-file " name="file" id="evidence_upload" aria-describedby="fileHelp">
    <input type="hidden" name="evidence" value="<?php echo $evidence; ?>" /> 
    <div class="uploader" style="display: none"><img src="catalog/view/theme/mystonestore/img/icons/uploader.gif" style="height: 50px;width:50px;"></div>
    <div class="text-danger"><?php echo $error_evidence; ?></div>
    </div>

  <button type="submit" class="btn btn-primary">Submit</button>
</form>
 </div>
      <?php echo $content_bottom; ?>   
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
	check_seller_status();
	</script>
<?php } ?>
<?php if(!$logged){ ?>
<script>
$('#product_help').removeClass('fadeandscale_three_open');
$('.chat_sellers').removeAttr('onclick');
$('#product_help').click(function(e){
	e.preventDefault();
	window.location = 'index.php?route=account/login';
});
$('.chat_sellers').click(function(e){
	e.preventDefault();
	window.location = 'index.php?route=account/login';
});

</script>
<?php } ?>
<script type="text/javascript">
	$('body').on('change','#evidence_upload',function(e){ 
		$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#redzone')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$('.uploader').show();
				},
				complete: function() {
					$('.uploader').hide();
				},
				success: function(json) {
					//$(node).parent().find('.text-danger').remove();

					if (json['error']) {
						//$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
						alert(json['error']);
					}

					if (json['success']) {
						alert(json['success']);
						$('input[name="evidence"]').val(json['code'])
						//$(node).parent().find('input').attr('value', json['code']);
                        //$(node).parent().find('span').html(json['file_name_upload']);

					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
	});
</script>
<script>
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
</script>
<?php if($logged){ ?>
<script type="text/javascript" src="chat/js/catgchat.js"></script>
<?php } ?>
<?php echo $footer; ?>
