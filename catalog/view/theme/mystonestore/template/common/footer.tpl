</div><footer>

  <div class="container">

        <div class="footer_part">

            <h1>START A BUSINESS WITH CONFIDENCE</h1>

           <div class="col-lg-3 col-sm-3 col-xs-12 address footer_col">           

                <h4>REACH US</h4>

                <br>            

                <h5 class="col-sm-11">My Stone Store</h5>

                <p class="col-sm-11"> <?php echo nl2br($address);?>  </p>

           </div>

           <div class="col-lg-9 col-sm-9 col-xs-12 footer_col">

                <form class="form-horizontal" action="index.php?route=information/contact" method="post"  id="contact_form">

				<fieldset>

					<h4 class="popup_header"> LET US HELP YOU</h4>

					<h4 class="numbers_foo"><?php echo $telephone;?></h4>

					<p class="number_footer col-sm-12 col-xs-12">Need support on your special or bulk orders? </p>

					<div class="form-group col-md-5 col-sm-5 col-xs-12">

						<div class="input-group">

							<input  name="first_name" placeholder="First Name" class="form-control"  type="text">

						</div>

					</div>



					<!-- Text input-->



					<!-- Text input-->

					  <div class="form-group col-md-5 col-sm-5  col-xs-12">

						<div class="input-group">

							<input name="email" placeholder="E-Mail Address" class="form-control"  type="text">

						</div>

					  

					  </div>

					<!-- Button -->

					<div class="form-group col-md-2  col-sm-2 col-xs-12">

						<button type="submit" class="btn btn-warning" >Join us </button>

					</div>

					</fieldset>

					</form>

			</div>

        </div>

  </div>

</footer>

<div class="footer_bottom">

<div class="container">



<div class="footer_menu">

 

 <ul class="nav navbar-nav">

  <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>

  <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>

  <li><a href="#">Products</a></li>

  <li><a href="<?php echo $about; ?>">About Us</a></li>

  <li><a href="#">FAQ</a></li>

  <li><a href="#">Contact Us</a></li>



   

 </ul>



 <ul class="nav navbar-nav social_icons">

  <li>Follow us</li>

  <li><img src="catalog/view/theme/mystonestore/img/icons/fb.png"></li>

  <li><img src="catalog/view/theme/mystonestore/img/icons/tw.png"></li>

  <li><img src="catalog/view/theme/mystonestore/img/icons/g+.png"></li>

  <li><img src="catalog/view/theme/mystonestore/img/icons/inned.png"></li>



   

 </ul>





</div>

      

      <p>Copyright 2017 © My Stone Store. All Rights Reserved.</p>



</div>

</div>

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
				<label>Social Groups</label>
				<?php foreach($group_lists as $index => $group_rows){ ?>
				<?php if($index > 0 && $index % 3 == 0) { ?>
				<div style="clear: both;"></div>
				<?php } ?>
				<div class="checkbox col-md-4 col-xs-12">
					<label>
						<input type="checkbox" name="social_groups[]" value="<?php echo $group_rows['social_group_id']; ?>"><?php echo $group_rows['name']; ?>
					</label>
					<input type="hidden" name="social_groups_texts[<?php echo $group_rows['social_group_id']; ?>]" value="<?php echo $group_rows['name']; ?>" />
				</div>
				<?php } ?>
				<div class="checkbox col-md-4 col-xs-12 find_other">
					<input type="text" class="form-control" name="other_group_text" value="" placeholder="other options">
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




<script src="http://yourjavascript.com/13912425571/jquery-bxslider-min.js"></script>

<script type="text/javascript">

	function submit_requirement(){
		$.ajax({
			type: 'POST',
			url: 'index.php?route=product/category/submitRequirement',
			data: $('#requirement_form').serialize(),
			beforeSend: function() {
				$('#help_submit_button').attr('disabled', true);
				$('#help_submit_button').text('loading...');
			},
			complete: function() {
				$('#help_submit_button').attr('disabled', false);
				$('#help_submit_button').text('Submit Your Requirment');
			},
			success: function(data) {
				$('.alert').remove();
				if (data['error']) {
					$.each(data['error'] , function(i, val) {
						$('#'+data['error'][i]).after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + val + '</div>');
					});
				}
				if (data['success']) {
					location.reload();
				}
			}
		});
	}

  	$(document).ready(function () {
		$('#fadeandscale_three,#fadeandscale_four').popup({pagecontainer: '.container',transition: 'all 0.3s'});

		$('.testimonials-slider').bxSlider({
			minSlides: 2,
			maxSlides: 2,
			mode:'vertical',
			slideMargin:2,
			pager:false,
			auto: true,
			autoControls: true
		});
	});
</script>
<script>$(document).ready(function () });</script>

<?php if(isset($userid)) { ?>
<div id="chatbox_friends" class="chatbox" style="bottom: 0px; right: 20px; display: block;">
<div class="chatboxhead" onclick="javascript:toggleChatBoxGrowth('friends')">
	<div class="chatboxtitle">Members</div>
	<div class="chatboxoptions"><a href="javascript:void(0)">-</a> 
	</div>
	<br clear="all">
</div>
<div class="chatboxcontent">
<div class="nav_collapse">
<ul class="nav navbar-nav">
<?php if($group_lists){?>
   <?php foreach($group_lists as $group_rows){?>
   <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><?php echo $group_rows['name'];?></a>
                <ul class="dropdown-menu">
				<?php if($group_lists_members[$group_rows['social_group_id']]){ ?>
					<?php foreach($group_lists_members[$group_rows['social_group_id']] as $group_lists_member){?>
					<?php if($group_lists_member['social_group_user_id']!=$userid){ ?>
					<li>
					<img class="profile-picture" src="http://placehold.it/50/55C1E7/fff&text=<?php echo substr($group_lists_member['username'],0,2);?>">
					<a href="javascript:void(0)" onclick="javascript:chatWith('<?php echo $group_lists_member['social_group_user_id'];?>','<?php echo $group_lists_member['username'];?>')"><?php echo $group_lists_member['username'];?></a>
					<div class="profile-status offline seller_status_<?php echo $group_lists_member['social_group_user_id'];?>" data-seller_id="<?php echo $group_lists_member['social_group_user_id'];?>"></div>
					</li>
					<?php } ?>
					<?php } ?>
				<?php } else { ?>
					<li><span>No Members found</span></li>
				<?php } ?>
                </ul>
	</li>			
		
   <?php } ?>	
   <?php } ?>	
</ul>	
</div>
</div>
</div>
<?php } ?>

<script>
	jQuery(document).ready(function($){
		function check_online_seller_status(){
			var customer_ids = [];
			$("[data-seller_id]").each(function(){
				var $this = $(this);
				var classList = this.className.split(/\s+/);
				var seller_id = $(this).data('seller_id');
				if(customer_ids.indexOf(seller_id) === -1) {				
					customer_ids.push(seller_id);
					$('.seller_status_'+seller_id).removeClass('online').addClass('offline');
					$('.seller_status_p_'+seller_id).text('Offline');
				}
			});
			
			$.ajax({
			  url: "index.php?route=account/account/checkstatus",
			  type: "POST",
			  data: {online_users: customer_ids},
			  dataType: "json",
			  success: function(data) {
				var online_users = data['online_users'];
				$.each(online_users, function(key,val){
					$('.seller_status_'+val).removeClass('offline').addClass('online');
					$('.seller_status_p_'+val).text('Online');
				});
			  },
			  complete:function() {
				setTimeout(function(){
					check_online_seller_status()
				}, 6000);
			  }
			});
		}
		check_online_seller_status();
	});	
</script>
</body></html>