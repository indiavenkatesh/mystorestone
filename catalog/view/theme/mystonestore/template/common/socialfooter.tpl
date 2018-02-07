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

  <li><a href="#">About Us</a></li>

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



<script src="http://yourjavascript.com/13912425571/jquery-bxslider-min.js"></script>



<script type="text/javascript">

  $(document).ready(function () {



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

</script><script>$(document).ready(function () {    $('#fadeandscale_three,#fadeandscale_four').popup({        pagecontainer: '.container',        transition: 'all 0.3s'    });});</script>
<div id="chatbox_friends" class="chatbox" style="bottom: 0px; right: 20px; display: block;">
<div class="chatboxhead">
	<div class="chatboxtitle">Members</div>
	<div class="chatboxoptions"><a href="javascript:void(0)" onclick="javascript:toggleChatBoxGrowth('friends')">-</a> 
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
					<div class="profile-status online"></div>
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


</body></html>