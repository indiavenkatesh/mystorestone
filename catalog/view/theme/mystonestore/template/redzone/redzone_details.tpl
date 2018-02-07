<?php echo $header; ?>
<link type="text/css" rel="stylesheet" media="all" href="chat/css/chat.css" />
<div class="container"> 
<div id="tabs-container">
	<div class="">
		<div class="table_all">
                    <div><a class="btn btn-default" href="index.php?route=redzone/redzone">Back</a></div>
		    <div class="title_table"><h2>Red Alert Zone</h2></div>
		    <div class="">
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
		    <div class="table_inner">
		        <table class="table">
		            <tr>
		                <td width="100%">
		                    <table>
		                        <tr>
		                            <td width="100%" class="text-center"><b><?php echo $redlist['heading']; ?></b></td>
		                            
		                        </tr>
		                    </table>
		                </td>
		            </tr>
		            <tr>
		                <td width="100%">
		                    <table>
		                        <tr>
		                            <td width="20%"><?php echo $redlist['heading']; ?></td>
		                            <td width="40%">
		                                <table>
		                                    <tr>
		                                        <td>Representative</td>
		                                    </tr>
	                                    <tr>
		                                        <td>
		                                            <table>
		                                                <tr>
		                                                    <td>Place</td>
		                                                    <td>Company</td>
		                                                    <td>Name </td>
		                                                    <td>Company</td>
		                                                    <td>Contact Number and Email </td>
		                                                </tr>
		                                                <tr>
		                                                    <td><?php echo $redlist['place']; ?></td>
		                                                    <td><?php echo $redlist['country']; ?></td>
		                                                    <td><?php echo $redlist['frauder']; ?></td>
		                                                    <td><?php echo $redlist['company']; ?></td>
		                                                    <td><?php echo $redlist['contact']; ?><br/><?php echo $redlist['email']; ?></td>
		                                                </tr>
		                                            </table>
		                                        </td>
		                                    </tr>
		                                </table>
		                            </td>
		                            <td width="40%">
		                                <table> 
                                                    <tr><td>Posted by</td></tr>	
 
		                                    <tr>
		                                        <td>
		                                            <table>
		                                                <tr>
		                                                    <td>Name</td>
		                                                    <td>Company</td>
		                                                    <td>Contact No</td>
		                                                    <td>Email ID</td>
		                                                    <td>Other</td>
		                                                </tr>
		                                                <tr>
		                                                    <td><br><?php echo $redlist['posted_by']['name']; ?></td>
		                                                    <td><br><?php echo $redlist['posted_by']['company']; ?></td>
		                                                    <td><br><?php echo $redlist['posted_by']['telephone']; ?></td>
		                                                    <td><br><?php echo $redlist['posted_by']['email']; ?></td>
		                                                    <td></td>
		                                                </tr>
		                                            </table>
		                                        </td>
		                                    </tr>
		                                </table>
		                            </td>
		                        </tr>
		                    </table>
		                </td>
		            </tr>
		            <tr>
		                <td width="100%">
		                    <table>
		                        <tr>
		                            <td width="20%" class="text-center"></td>
		                            <td width="80%"><?php echo $redlist['description']; ?></td>
		                        </tr>
		                    </table>
		                </td>
		            </tr>
		            <tr>
		                <td width="100%">
		                    <table>
		                        <tr>
		                            <td width="20%" class="text-center">Proof / Evidence</td>
		                            <td width="26%" class="text-center"> <?php if($redlist['evidence_url']){ ?><img src="<?php echo $redlist['evidence_url'];?>" style="height:281px;width:431px;"><?php } ?> </td>
		                            <td width="26%" class="text-center"> <!-- <img src="http://preview.ixly.in/mystorestone/image/catalog/logo_ss.png"> -->  </td>
		                            <td width="27%" class="text-center"></td>
		                        </tr>
		                    </table>
		                </td>
		            </tr>
		        </table>
		    </div>
		</div>
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
