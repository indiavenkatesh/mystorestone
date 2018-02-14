<?php echo $header;?>
<script src="http://malsup.github.com/jquery.form.js"></script>
<link type="text/css" rel="stylesheet" media="all" href="chat/css/chat.css" />
<style type="text/css">
	.progress { position:relative; width:400px;  padding: 1px;  }
.bar { width:0%; height:20px; }
.percent {
    position: absolute;
    display: inline-block;
    top: 0;
    left: 48%;
    color: #fff;
    font-weight: bold;
}

.progress { 
			height: 20px;  /* Can be anything */
			position: relative;
			margin: 0 auto; /* Just for demo spacing */
			background:transparent;
			-moz-border-radius: 25px;
			-webkit-border-radius: 25px;
			border-radius: 25px;
			padding: 10px;
			-webkit-box-shadow: inset 0 -1px 1px rgba(255,255,255,0.3);
			-moz-box-shadow   : inset 0 -1px 1px rgba(255,255,255,0.3);
			box-shadow        : inset 0 -1px 1px rgba(255,255,255,0.3);
		}
		.progress > .bar {
			display: block;
			height: 100%;
			   -webkit-border-top-right-radius: 8px;
			-webkit-border-bottom-right-radius: 8px;
			       -moz-border-radius-topright: 8px;
			    -moz-border-radius-bottomright: 8px;
			           border-top-right-radius: 8px;
			        border-bottom-right-radius: 8px;
			    -webkit-border-top-left-radius: 20px;
			 -webkit-border-bottom-left-radius: 20px;
			        -moz-border-radius-topleft: 20px;
			     -moz-border-radius-bottomleft: 20px;
			            border-top-left-radius: 20px;
			         border-bottom-left-radius: 20px;
			background-color: rgb(43,194,83);
			background-image: -webkit-gradient(
			  linear,
			  left bottom,
			  left top,
			  color-stop(0, rgb(43,194,83)),
			  color-stop(1, rgb(84,240,84))
			 );
			background-image: -moz-linear-gradient(
			  center bottom,
			  rgb(43,194,83) 37%,
			  rgb(84,240,84) 69%
			 );
			-webkit-box-shadow: 
			  inset 0 2px 9px  rgba(255,255,255,0.3),
			  inset 0 -2px 6px rgba(0,0,0,0.4);
			-moz-box-shadow: 
			  inset 0 2px 9px  rgba(255,255,255,0.3),
			  inset 0 -2px 6px rgba(0,0,0,0.4);
			box-shadow: 
			  inset 0 2px 9px  rgba(255,255,255,0.3),
			  inset 0 -2px 6px rgba(0,0,0,0.4);
			position: absolute;overflow: hidden;top: 0;
		}
		.progress > .bar:after {
			content: "";
			position: absolute;
			top: 0; left: 0; bottom: 0; right: 0;
			background-image: 
			   -webkit-gradient(linear, 0 0, 100% 100%, 
			      color-stop(.25, rgba(255, 255, 255, .2)), 
			      color-stop(.25, transparent), color-stop(.5, transparent), 
			      color-stop(.5, rgba(255, 255, 255, .2)), 
			      color-stop(.75, rgba(255, 255, 255, .2)), 
			      color-stop(.75, transparent), to(transparent)
			   );
			background-image: 
				-moz-linear-gradient(
				  -45deg, 
			      rgba(255, 255, 255, .2) 25%, 
			      transparent 25%, 
			      transparent 50%, 
			      rgba(255, 255, 255, .2) 50%, 
			      rgba(255, 255, 255, .2) 75%, 
			      transparent 75%, 
			      transparent
			   );
			z-index: 1;
			-webkit-background-size: 50px 50px;
			-moz-background-size: 50px 50px;
			-webkit-animation: move 2s linear infinite;
			   -webkit-border-top-right-radius: 8px;
			-webkit-border-bottom-right-radius: 8px;
			       -moz-border-radius-topright: 8px;
			    -moz-border-radius-bottomright: 8px;
			           border-top-right-radius: 8px;
			        border-bottom-right-radius: 8px;
			    -webkit-border-top-left-radius: 20px;
			 -webkit-border-bottom-left-radius: 20px;
			        -moz-border-radius-topleft: 20px;
			     -moz-border-radius-bottomleft: 20px;
			            border-top-left-radius: 20px;
			         border-bottom-left-radius: 20px;
			overflow: hidden;
		}
		
		@-webkit-keyframes move {
		    0% {
		       background-position: 0 0;
		    }
		    100% {
		       background-position: 50px 50px;
		    }
		}

</style>
<div class="social_media">
<div class="container">
  <div class="row">

      <div class="col-sm-3 col-lg-3 col-xs-12 social_sidebar">

         <div class="group">
		 
               <h3><a href="<?php echo $group_filter_url.'&myprofile=1';?>"><img src="<?php echo $thumb;?>">@<?php echo $username;?></a></h3>

               <div class="nav_collapse">
        <ul class="nav navbar-nav navbar-left">
            <li id="mygroup_list" class="dropdown">
				<a 
				<?php if(isset($current_seller_info) && isset($current_seller_info['is_paid']) && $current_seller_info['is_paid'] == 1) { ?>
				href="index.php?route=redzone/redzone" 
				<?php } else { ?>
				href="index.php?route=redzone/redzone" 
				<?php } ?>
                role="button" aria-expanded="false"><img src="catalog/view/theme/mystonestore/img/icons/group.png">Blacklist sellers <?php if($new_blacklist!=0){ ?><span style="background: #961112;padding: 1px 8px;color: #fff;border-radius: 100%;font-size: 13px;font-weight: bold;"><?php echo $new_blacklist; ?></span><?php } ?></a>
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><img src="catalog/view/theme/mystonestore/img/icons/group.png">My Groups</a>
                <ul class="dropdown-menu">
				<?php if($user_group_lists_in){?>
                   <?php foreach($user_group_lists_in as $group_rows){?>
                    <li class="group_lists_li<?php echo $group_rows['social_group_id'];?>"><a class="fancybox" href="<?php echo $group_filter_url.'&filter_group='.$group_rows['social_group_id'];?>"><?php echo $group_rows['name'];?></a><!--<a href="javascript:void(0);" onclick="group_delete('<?php echo $group_rows['social_group_id'];?>')"><i class="glyphicon glyphicon-remove"></i></a> --></li>
				   <?php } ?>
				<?php } else { ?>
					<li class="group_lists_li">No Groups found</li>
				<?php } ?>
                </ul>
            </li>

           <?php /** <li class="dropdown">
                <a href="#addgroups" class="dropdown-toggle fancybox"><img src="catalog/view/theme/mystonestore/img/icons/addgroup.png">Add Groups</a>
            </li> **/ ?>
			
			<li id="joingroup_list" class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><img src="catalog/view/theme/mystonestore/img/icons/insight.png">Join Groups</a>
                <ul class="dropdown-menu">
				<?php if($group_lists){?>
                   <?php foreach($group_lists as $group_rows){?>
				   <?php if(isset($current_seller_info) && isset($current_seller_info['is_paid']) && $current_seller_info['is_paid'] == 1) { ?>
                    <li class="join_group_lists_li<?php echo $group_rows['social_group_id'];?>"><a class="fancybox" href="#join_group_lists<?php echo $group_rows['social_group_id'];?>"><?php echo $group_rows['name'];?></a></li>
					<?php } else { ?>
					<li><a class="fancybox" href="#paidtocontinue"><?php echo $group_rows['name'];?></a></li>
					<?php } ?>
				   <?php } ?>
				<?php } else { ?>
					<li class="group_lists_li">No Groups found</li>
				<?php } ?>
				
                </ul>
            </li>

            <!--li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><img src="catalog/view/theme/mystonestore/img/icons/pokes.png">Poke</a>
            </li-->
             

           
        </ul>
       
    </div>
    </div>
	<div class="group">
	<h3>Groups</h3>
	<div class="nav_collapse">
        <ul class="nav navbar-nav navbar-left">
				<?php if($group_lists){?>
                   <?php foreach($group_lists as $group_rows){?>
                    <li class="groups_lists_li<?php echo $group_rows['social_group_id'];?>"><a href="<?php echo $group_filter_url.'&filter_group='.$group_rows['social_group_id'];?>"><?php echo $group_rows['name'];?></a></li>
				   <?php } ?>
				<li class="group_lists_li"><a href="<?php echo $group_all_url;?>">View all groups</a></li>
				<?php } else { ?>
					<li class="groups_lists_li">No Groups found</li>
				<?php } ?>
                </ul>
          
       
    </div>

         </div>
      </div>

      <div class="col-sm-8 col-lg-7 col-xs-12 post_part">
<?php
if(!empty($check_availability) && isset($current_seller_info) && isset($current_seller_info['is_paid']) && $current_seller_info['is_paid'] == 1)
{
?>
         <div class="latest_post add_post">
                <div class="row">

                   <div class="create_post col-lg-12">

                     <ul class="nav navbar-nav">
                         <li><span><i class="glyphicon  glyphicon-pencil "></i>Create New Post</span></li>
                         <li><a href="#photo_upload" class="fancybox"><span><i class="glyphicon glyphicon-picture"></i>Add Photo</span></a></li>
                         <li><a href="#video_upload" class="fancybox"> <span><i class="glyphicon  glyphicon-film"></i>Add Videos</span></a></li>

                     </ul>

                   </div>

                    <div class="user_db col-sm-2 col-lg-2">
                       <img src="<?php echo $thumb;?>" />

                    </div>

                    <div class="post_area col-sm-10 col-lg-10">
					<form name="add_post" method="post" action="<?php echo $action;?>">
                    <input type="hidden" name="social_group_id" id="social_group_id" value="<?php if(isset($_GET['filter_group'])){ echo $_GET['filter_group']; } ?>">
                      <textarea class="form-control" name="comment" placeholder="What’s on your mind?"></textarea>
                       <button type="submit" class="btn btn-warning">post <span class="glyphicon glyphicon-send"></span></button>
					</form>
                    </div>


 
                  
                    
                    
                   




                </div>
        </div>

        <?php
}
?>
<?php if($articles) { ?>
<?php foreach($articles as $article) { ?>
        <div class="latest_post article_<?php echo $article['simple_blog_article_id']; ?>">
                <div class="row">
                    <div class="user_db col-sm-2 col-lg-2">
                       <img src="<?php echo $article['thumb']; ?>" />
                    </div>

                    <div class="user_name col-sm-10 col-lg-10">
                      <h4>@<?php echo $article['author_name']; ?></h4>
		      <span><?php echo $article['date_added']; ?></span>
		      <?php if($article['same_user']==1){ ?>
			<div class="pull-right"><a onclick="post_delete('<?php echo $article['simple_blog_article_id']; ?>')" data-id="<?php echo $article['simple_blog_article_id']; ?>"><img src="catalog/view/theme/mystonestore/img/icons/delete_post.png"></a></div>
		      <?php } ?>
                    </div>

                    <div class="user_content col-sm-12 col-lg-12">
					<?php if($article['description']!='image...' && $article['description']!='video...'){ ?>
                    <p><?php echo $article['description']; ?><span><a class="fancybox" href="#readmore<?php echo $article['simple_blog_article_id']; ?>">(Read More)</a></span> </p>
					<?php } ?>
                    <ul class="nav navbar-nav user_reastion">
                        <li><span class="like_count<?php echo $article['simple_blog_article_id']; ?>"><?php echo $article['total_likes'];?></span><a href="javascript:void(0);">Like</a></li>
                         <li><span class="comment_count<?php echo $article['simple_blog_article_id']; ?>"><?php echo $article['total_comment'];?></span><a href="javascript:void(0);">Comment</a></li>
                          <li><span class="share_count<?php echo $article['simple_blog_article_id']; ?>"><?php echo $article['total_shares'];?></span><a href="javascript:void(0);">Share</a></li>       
                          <li><span class="spam_count<?php echo $article['simple_blog_article_id']; ?>"><?php echo $article['total_spams'];?></span><a href="javascript:void(0);">Spam</a></li>       
                    </ul>
                    </div>
					<?php if(!empty($article['shared_articles'])){ ?>
					<?php foreach($article['shared_articles'] as $shared_articless){ ?>
					<div class="pop_well">
						<div class="row">
							<div class="user_db col-sm-2 col-lg-2">
							   <img src="<?php echo $article['thumb']; ?>" />
							</div>
							<div class="user_name col-sm-10 col-lg-10">
								<h4>@<?php echo $shared_articless['author_name']; ?></h4>
							</div>
							<?php if($shared_articless['image'] && $shared_articless['description']=='video...'){ ?>
							<div class="user_content col-sm-12 col-lg-12">
							<p><?php echo $shared_articless['description']; ?></p>
							</div>
							<?php } ?>
							<?php if($shared_articless['image'] && $shared_articless['description']=='video'){ ?>
							<div class="post_img col-sm-12 col-lg-12">
								<video width="100%" controls>
								  <source src="<?php echo $shared_articless['image']; ?>" type="video/<?php echo utf8_strtolower(utf8_substr(strrchr($shared_articless['image'], '.'), 1));?>">
								  Your browser does not support HTML5 video.
								</video>
							</div>
							<?php } else if($shared_articless['image']){ ?>
							<div class="post_img col-sm-12 col-lg-12">
							   <img class="img-responsive" src="<?php echo $shared_articless['image']; ?>">
							</div>
							<?php } ?>
						</div>  
					</div>
					<?php } ?>
					<?php } ?>
					<?php if($article['image'] && $article['description']=='video...'){ ?>
                    <div class="post_img col-sm-12 col-lg-12">
						<video width="100%" controls>
						  <source src="<?php echo $article['image']; ?>" type="video/<?php echo utf8_strtolower(utf8_substr(strrchr($article['image'], '.'), 1));?>">
						  Your browser does not support HTML5 video.
						</video>
                    </div>
					<?php } else if($article['image']){ ?>
					<div class="post_img col-sm-12 col-lg-12">
                       <img class="img-responsive" src="<?php echo $article['image']; ?>">
                    </div>
					<?php } ?>
                     <div class="share_icons col-sm-9 col-lg-10 col-xs-10">
						 <div class=" col-sm-4 col-lg-3 ">
                            <a href="javascript:void(0);" class="like_article <?php if(isset($article['get_likes']) && empty($article['get_likes'])){ ?> hide <?php } ?>" id="unliked_article<?php echo $article['simple_blog_article_id']; ?>" onclick="add_likes('<?php echo $article['simple_blog_article_id']; ?>','1')"> <img src="catalog/view/theme/mystonestore/img/icons/like.png"><span> UnLike</span></a>
							<a href="javascript:void(0);" class="like_article <?php if(isset($article['get_likes']) && !empty($article['get_likes'])){ ?> hide <?php } ?>" id="liked_article<?php echo $article['simple_blog_article_id']; ?>" onclick="add_likes('<?php echo $article['simple_blog_article_id']; ?>','0')"> <img src="catalog/view/theme/mystonestore/img/icons/like.png"><span> Like</span></a>
                         </div>
                         <div class=" col-sm-4 col-lg-3">
                             <a href="javascript:void(0)" onclick="$('#comment_text<?php echo $article['simple_blog_article_id']; ?>').focus();" class="comment_article"  data-value="<?php echo $article['simple_blog_article_id']; ?>"> <img src="catalog/view/theme/mystonestore/img/icons/comment.png"><span>Comment</span></a>

                         </div>
                         <div class=" col-sm-3 col-lg-3">
						 <a 
						 <?php if(isset($current_seller_info) && isset($current_seller_info['is_paid']) && $current_seller_info['is_paid'] == 1) { ?>
						 href="#sharepost<?php echo $article['simple_blog_article_id']; ?>"
						 <?php } else { ?>
						 href="#paidtocontinue"
						 <?php } ?>
                           class="share_article fancybox"><img src="catalog/view/theme/mystonestore/img/icons/share.png"><span>Share</span></a>
                         </div>
						 <?php if($article['author_user_id'] != $userid){ ?>
						 <div class=" col-sm-3 col-lg-2">
						 <?php if(isset($current_seller_info) && isset($current_seller_info['is_paid']) && $current_seller_info['is_paid'] == 1) { ?>
						 <a href="javascript:void(0)" onclick="javascript:chatWith('<?php echo $article['author_user_id']; ?>','<?php echo $article['author_name']; ?>')" class="chat_article">
						 <?php } else { ?>
						 <a href="#paidtocontinue" class="chat_article fancybox"
						 <?php } ?>
                         <span> <img src="catalog/view/theme/mystonestore/img/icons/addgroup.png">Chat</span></a>
                         </div>
						 <?php } ?>
                    </div>
                   <div class="share_groups col-sm-3 col-lg-2 col-xs-10">
                         <?php if($article['same_user']!=1){ ?>
                             <div class="share_groups_inner">
							 	<a 
								<?php if(isset($current_seller_info) && isset($current_seller_info['is_paid']) && $current_seller_info['is_paid'] == 1) { ?>
								href="#spampost<?php echo $article['simple_blog_article_id']; ?>" 
								<?php } else { ?>
								href="#paidtocontinue" 
								<?php } ?>
                                 class="share_article fancybox"> <span> <img src="catalog/view/theme/mystonestore/img/icons/addgroup.png">  Spam</span></a>
                             </div>
                         <?php } ?>
                    </div>
					<div class="col-sm-12" style="padding: 0;">
					<div class="user_db col-sm-2 col-lg-2">
						   <img src="<?php echo $thumb; ?>" />
						</div>	
						<div class="user_name col-sm-10 col-lg-10">
						  <h4>@<?php echo $username;?></h4>
						</div>

						<div id="comment_list<?php echo $article['simple_blog_article_id']; ?>" class="comment_group col-xs-12">
					<?php if($article['comments']) { ?>
					<?php $count_comments_i = 1; $count_comments = count($article['comments']); ?>
						<?php foreach ($article['comments'] as $comment) { ?>
						<div class="<?php echo ($count_comments > 5 && $count_comments_i <= ($count_comments-5)) ? 'hide':'';?>">
						<div class="user_db col-sm-3 col-lg-2">
						   <img src="<?php echo $comment['cthumb']; ?>" />
						</div>		
						<div class="user_name col-sm-10 col-lg-10">
						  <h4>@<?php echo $comment['author']; ?></h4>

						  <div class="user_content user_content_group col-sm-12 col-lg-12">
						<p><?php echo $comment['comment']; ?></p>
						 <span><?php echo $comment['date_added']; ?></span>
						</div>
						 
						</div>
						

						</div>
						<?php $count_comments_i++; } ?>	
						<?php if($count_comments > 5){ ?>
						<div class="col-sm-12 pull-right read_more_box">
						<a href="#commentpost<?php echo $article['simple_blog_article_id']; ?>" class="comment_article fancybox">View More</a>
						</div>
						<?php } ?>	
					<?php } ?>
					</div>
						<div class="user_content col-sm-12 col-lg-12">
						    <textarea class="form-control share_text" id="comment_text<?php echo $article['simple_blog_article_id']; ?>" name="comment" placeholder="Reply or Comment"></textarea>
						</div>
						<div class="pop_post col-sm-12 col-lg-12">			
						<input type="hidden" name="comment_article_id" value="<?php echo $article['simple_blog_article_id']; ?>"/>
						<button type="button" id="comment_button<?php echo $article['simple_blog_article_id']; ?>" onclick="comment_article('<?php echo $article['simple_blog_article_id']; ?>')" class="post_pop_button btn btn-warning">Comment</button>					
						</div>
						</div>
						
                </div>
        </div>
     <?php } } else { ?>
	 <div class="latest_post">
        <div class="row">
			<p>No posts found</p>
		</div>
	 </div>
	 <?php } ?>
      </div>
  </div>
</div>
</div>  
<?php if($articles) { ?>
<?php foreach($articles as $article) { ?>
	<div class="well read_more_section" id="readmore<?php echo $article['simple_blog_article_id']; ?>">
			<div class="pop_well">			  
			 <div class="row">
						<div class="user_db col-sm-2 col-lg-2">
						   <img src="<?php echo $article['thumb'];?>" />
						</div>		
						<div class="user_name col-sm-10 col-lg-10">
						  <h4>@<?php echo $article['author_name']; ?></h4>
						</div>
						<div class="user_content col-sm-12 col-lg-12"> 
								<p><?php echo $article['full_description']; ?></p>	
						</div>
						<?php if($article['image']){ ?>
						<div class="post_img col-sm-12 col-lg-12">
						   <img class="img-responsive" src="<?php echo $article['image']; ?>">
						</div>
						<?php } ?>
					</div>	   
			</div>
		</div>

		<div class="well read_more_section" id="commentpost<?php echo $article['simple_blog_article_id']; ?>">
			<div class="pop_well">			  
			 <div class="row">
					<div id="comment_list<?php echo $article['simple_blog_article_id']; ?>">
					<?php if($article['comments']) { ?>
						<?php foreach ($article['comments'] as $comment) { ?>
						<div class="user_db col-sm-2 col-lg-2">
						   <img src="<?php echo $comment['cthumb']; ?>" />
						</div>		
						<div class="user_name col-sm-10 col-lg-10">
						  <h4>@<?php echo $comment['author']; ?></h4>
						  <span><?php echo $comment['date_added']; ?></span>
						</div>
						<div class="user_content col-sm-12 col-lg-12">
						<p><?php echo $comment['comment']; ?></p>
						</div>
						<?php } ?>	
					<?php } ?>
					</div>												
					</div>	   
			</div>
		</div>
		<?php if(isset($current_seller_info) && isset($current_seller_info['is_paid']) && $current_seller_info['is_paid'] == 1) { ?>
		<div class="well read_more_section" id="sharepost<?php echo $article['simple_blog_article_id']; ?>">
			<div class="pop_well">			  
			 <div class="row">
						<form name="share_post" method="post" action="<?php echo $action;?>">
						<div class="user_db col-sm-2 col-lg-2">
						   <img src="<?php echo $thumb;?>" />
						</div>		
						<div class="user_name col-sm-10 col-lg-10">
						  <h4>@<?php echo $username;?></h4>
						</div>
						<div class="user_content col-sm-12 col-lg-12">
						    <textarea class="form-control share_text" name="comment" placeholder="Say Something About Us"></textarea>
						</div>
						<?php if($article['description']!='image...' && $article['description']!='video...'){ ?>
						<div class="user_content col-sm-12 col-lg-12"> 
								<p><?php echo $article['full_description']; ?></p>	
						</div>
						<?php } ?>
						<?php if($article['image'] && $article['description']=='video...'){ ?>
						<div class="post_img col-sm-12 col-lg-12">
							<video width="100%" controls>
							  <source src="<?php echo $article['image']; ?>" type="video/<?php echo utf8_strtolower(utf8_substr(strrchr($article['image'], '.'), 1));?>">
							  Your browser does not support HTML5 video.
							</video>
						</div>
						<?php } else if($article['image']){ ?>
						<div class="post_img col-sm-12 col-lg-12">
						   <img class="img-responsive" src="<?php echo $article['image']; ?>">
						</div>
						<?php } ?>
						<div class="pop_post col-sm-12 col-lg-12">			
						<input type="hidden" name="share_article_id" value="<?php echo $article['simple_blog_article_id']; ?>"/>
						<button type="submit" name="share_post_button" class="post_pop_button btn btn-warning">Post</button>					
						</div>
						</form>
					</div>	   
			</div>
		</div>
		<div class="well read_more_section" id="spampost<?php echo $article['simple_blog_article_id']; ?>">
			<div class="pop_well">			  
			 <div class="row">
						<div class="user_db col-sm-2 col-lg-2">
						   <img src="<?php echo $thumb;?>" />
						</div>		
						<div class="user_name col-sm-10 col-lg-10">
						  <h4>Add the post to Spam</h4>
						</div>
						<div class="user_content col-sm-12 col-lg-12">
							<p>&nbsp;</p>
							<textarea class="form-control spam_text" id="spam_text<?php echo $article['simple_blog_article_id']; ?>" name="description" placeholder="Reason"></textarea>
						</div>
						<div class="pop_post col-sm-12 col-lg-12">			
						<button type="button" name="post_spam_button" id="spam_button<?php echo $article['simple_blog_article_id']; ?>" onclick="spam_article('<?php echo $article['simple_blog_article_id']; ?>')" class="post_pop_button btn btn-warning">Add to Spam</button>					
						</div>
					</div>	   
			</div>
		</div>
		<?php } ?>
     <?php } } ?>



<?php if(isset($current_seller_info) && isset($current_seller_info['is_paid']) && $current_seller_info['is_paid'] == 1) { ?>
<div class="well" id="video_upload">
<div class="pop_well">

      <div class="create_post col-lg-12">

                     <ul class="nav navbar-nav">
                         <li><span><i class="glyphicon  glyphicon-pencil "></i>Create New Post</span></li>
                         <li><a href="#photo_upload" class="fancybox"><span><i class="glyphicon glyphicon-picture"></i>Add Photo</span></a></li>
                         <li><a href="#video_upload" class="fancybox"> <span><i class="glyphicon  glyphicon-film"></i>Add Videos</span></a></li>


                     </ul>
					 
					 
					  
      </div>
	  
	  <div class="upload_file">
	       <form class="file_up">
	  			  
					  <div class="col-sm-12 col-lg-12">
					  
					     <div class="col-sm-6 col-lg-6">
						     
							 <label class="video_text">Upload Your Videos</label>
						 </div>
					       
					    <div class="col-sm-6 col-lg-6">
						
						     <input type="file" id="article_upload_video" name="video" accept="video/*">
							 
						 </div>
					  </div>
					  
					 <div class="col-sm-12 col-lg-12">
			   

			   <input type="submit" class="btn btn-warning" value="Post" onclick="upload_files('article_upload_video')">
		  </div>

		  </form>
		   <div class="progress">
        <div class="bar"></div >
        <div class="percent">0%</div>

           
					  
	</div>

 </div>
</div>

<div class="well" id="photo_upload">
<div class="pop_well">

 <div class="create_post col-lg-12">

                     <ul class="nav navbar-nav">
                         <li><span><i class="glyphicon  glyphicon-pencil "></i>Create New Post</span></li>
                         <li><a href="#photo_upload" class="fancybox"><span><i class="glyphicon glyphicon-picture"></i>Add Photo</span></a></li>
                         <li><a href="#video_upload" class="fancybox"> <span><i class="glyphicon  glyphicon-film"></i>Add Videos</span></a></li>


                     </ul>
					 
					 
					  
      </div>
	  
	  <div class="upload_file">

	    <form class="file_up">
			  
		  <div class="col-sm-12 col-lg-12">
		  
			 <div class="col-sm-6 col-lg-6">
				 
				 <label class="video_text">Upload Your Photos</label>
			 </div>
			   
			<div class="col-sm-6 col-lg-6">
			
				 <input type="file" name="image" id="article_upload_image" accept="image/*">
				 
			 </div>
		  </div>
		  
		  <div class="col-sm-12 col-lg-12">
			   

			   <input type="submit" class="btn btn-warning" value="Post" onclick="upload_files('article_upload_image')">
		  </div>

		  </form>
		   <div class="progress">
        <div class="bar"></div >
        <div class="percent">0%</div >
    </div>
    
    <div id="status"></div>
				 					  
	</div>

 </div>
   
</div><?php /** ?>
<div class="well read_more_section" id="addgroups">
	<div class="pop_well">			  
	 <div class="row">
				<form name="group_create" method="post" action="<?php echo $group_action;?>">
				<div class="user_db col-sm-2 col-lg-2">
				   <img src="catalog/view/theme/mystonestore/img/db.png" />
				</div>		
				<div class="user_name col-sm-10 col-lg-10">
				  <h4>Create Group</h4>
				</div>
				<div class="user_content col-sm-12 col-lg-12">
					<input type="text" name="name" class="form-control share_text" placeholder="Name"></textarea>
					<textarea class="form-control share_text" name="description" placeholder="Description"></textarea>
				</div>
				<div class="pop_post col-sm-12 col-lg-12">			
				<button type="submit" name="create_group_button" class="post_pop_button btn btn-warning">Create</button>					
				</div>
				</form>
			</div>	   
	</div>
</div> <?php **/ ?>
<?php } ?>
<?php if($user_group_lists){?>
   <?php foreach($user_group_lists as $group_rows){?>
	<div class="well read_more_section" id="group_lists<?php echo $group_rows['social_group_id'];?>">
	<div class="pop_well">			  
		 <div class="row">
					<form name="group_edit" method="post" action="<?php echo $group_action;?>">
					<div class="user_db col-sm-2 col-lg-2">
					   <img src="catalog/view/theme/mystonestore/img/db.png" />
					</div>		
					<div class="user_name col-sm-10 col-lg-10">
					  <h4>Edit Group</h4>
					</div>
					<div class="user_content col-sm-12 col-lg-12">
						<input type="text" name="name" class="form-control share_text" value="<?php echo $group_rows['name'];?>" placeholder="Name">
						<textarea class="form-control share_text" name="description" placeholder="Description"><?php echo $group_rows['description'];?></textarea>
					</div>
					<div class="user_content col-sm-12 col-lg-12">
						<p>Members</p>
						<?php if($user_group_lists_members[$group_rows['social_group_id']]){ ?>
						<?php foreach($user_group_lists_members[$group_rows['social_group_id']] as $user_group_lists_member){?>
						<span><?php echo $user_group_lists_member['username'];?></span><br>
						<?php } ?>
						<?php } else { ?>
						<span>No Members found</span>
						<?php } ?>
					</div>
					<div class="pop_post col-sm-12 col-lg-12">	
					<input type="hidden" name="edit_group_list" value="<?php echo $group_rows['social_group_id'];?>" />
					<button type="submit" name="edit_group_button" class="post_pop_button btn btn-warning">Update</button>					
					</div>
					</form>
				</div>	   
		</div>
	</div>
   <?php } ?>
<?php } ?>
<?php if($group_lists){?>
   <?php foreach($group_lists as $group_rows){?>
	<div class="well read_more_section" id="join_group_lists<?php echo $group_rows['social_group_id'];?>">
	<div class="pop_well">			  
		 <div class="row">
					<div class="alert alert-success group_msg" style="display:none;"> </div>
					<div class="user_db col-sm-2 col-lg-2">
					   <img src="catalog/view/theme/mystonestore/img/db.png" />
					</div>		
					<div class="user_name col-sm-10 col-lg-10">
					  <h4>Join Group - <?php echo $group_rows['name'];?></h4>
					</div>
					<div class="user_content col-sm-12 col-lg-12">
						<p><?php echo $group_rows['description'];?></p>
						<span>Group Admin - <?php echo isset($group_rows['username']) ? $group_rows['username'] : 'Admin';?></span>
					</div>
					<div class="user_content col-sm-12 col-lg-12">
						<p>Members</p>
						<?php $join_group_button = true;?>
						<?php if($group_lists_members[$group_rows['social_group_id']]){ ?>
						<?php foreach($group_lists_members[$group_rows['social_group_id']] as $group_lists_member){?>
						<?php if($group_lists_member['social_group_user_id'] == $userid){ $join_group_button = false;} ?>
						<span><?php echo $group_lists_member['username'];?></span><br>
						<?php } ?>
						<?php } else { ?>
						<span>No Members found</span>
						<?php } ?>
					</div>					
					<div class="pop_post col-sm-12 col-lg-12">	
					<input type="hidden" name="join_group_list" value="<?php echo $group_rows['social_group_id'];?>" />
					<?php if($join_group_button == true){ ?>
					<button type="button" name="join_group_button" onclick="group_join('<?php echo $group_rows['social_group_id'];?>')" class="post_pop_button btn btn-warning">Join Group</button>					
					<?php } else { ?>
					<button type="button" name="leave_group_button" onclick="group_leave('<?php echo $group_rows['social_group_id'];?>')" class="post_pop_button btn btn-warning">Leave Group</button>					
					<?php } ?>
					</div>
				</div>	   
		</div>
	</div>
   <?php } ?>
<?php } ?>

<a href="#paidtocontinue" class="fancybox" id="openpaidtocontinue"></a>
		<div class="well read_more_section" id="paidtocontinue">
			<div class="pop_well">			  
			 <div class="row">
						<div class="user_db col-sm-2 col-lg-2">
						   <img src="<?php echo $thumb;?>" />
						</div>		
						<div class="user_name col-sm-10 col-lg-10">
						  <h4>Access denied!</h4>
						</div>
						<div class="user_content col-sm-12 col-lg-12">
							<p>&nbsp;</p>
							<p>Paid members only able to access this action. Please contact administrator to procedd further.</p>							
						</div>
					</div>	   
			</div>
		</div>

 <script>
        
      $('.fancybox').fancybox();
		
			
        
    </script>
<script>
function add_likes(values,type){
	<?php if(isset($current_seller_info) && isset($current_seller_info['is_paid']) && $current_seller_info['is_paid'] == 1) { ?>
	var urls = 'action=like&article_id='+values;
	var liked_article = $('#liked_article'+values);
	var unliked_article = $('#unliked_article'+values);
	if(type==1){
		urls = 'action=unlike&article_id='+values;
		var liked_article = $('#unliked_article'+values);
		var unliked_article = $('#liked_article'+values);
	}
	$.ajax({
		url: "index.php?route=simple_blog/article/action",
		type: 'post',
		data: urls,
		dataType: 'json',
		success: function (response) {
			liked_article.addClass('hide');
			unliked_article.removeClass('hide');
			$('.like_count'+values).html(response.count);
		},
		error: function(jqXHR, textStatus, errorThrown) {
		   console.log(textStatus, errorThrown);
		}
	});
	<?php } else { ?>
	$("#openpaidtocontinue").trigger('click');
	<?php } ?>
}
function post_delete(value){
	if(confirm('ARE YOU SURE DO  YOU WANT TO REMOVE')){
		$.ajax({
			url: "index.php?route=simple_blog/article/remove_post",
			type: 'post',
			data: {blog_id:value},
			dataType: 'json',
			success: function (responseText) {
				if(responseText !='failed'){
					$('.article_'+responseText).hide();
				} 
			},
			error: function(jqXHR, textStatus, errorThrown) {
			   console.log(textStatus, errorThrown);
			}
		});
	} 

}
function upload_files(file_list){
    var social_group_id = $('#social_group_id').val();
    var bar = $('.bar');
    var percent = $('.percent');
    var status = $('#status');
    var file_data = $('#'+file_list).prop('files')[0];
    var form_data = new FormData();                  
    form_data.append('file', file_data);
    form_data.append('social_group_id', social_group_id); 
$('.file_up').ajaxForm({
    beforeSend: function() {
        status.empty();
        var percentVal = '0%';
        bar.width(percentVal)
        percent.html(percentVal);
    },
    uploadProgress: function(event, position, total, percentComplete) {
        var percentVal = percentComplete + '%';
        bar.width(percentVal)
        percent.html(percentVal);
    },
    success: function() {
        var percentVal = '100%';
        bar.width(percentVal)
        percent.html(percentVal);
    },
	complete: function(xhr) {

		  $.ajax({
			url: "index.php?route=simple_blog/article/articleupload",
			type: 'post',
			cache: false,
			contentType: false,
			processData: false,
			data: form_data,                         
			dataType: 'json', 
			success: function(response){
				if(response.error){
$('.progress').hide();
					$('#'+file_list).after('<p>'+response.error+'</p>');
				} else {
					$('.progress').hide();
                                        $.fancybox.close();
					location.reload();
				}
			}
     });
	}
}); 



    //alert(form_data);                             
  
}
function comment_article(values){
	<?php if(isset($current_seller_info) && isset($current_seller_info['is_paid']) && $current_seller_info['is_paid'] == 1) { ?>
	var comment_text = $('#comment_text'+values).val();
	var name = '<?php echo $username;?>';
	var user_id = '<?php echo $userid;?>';
	$.ajax({
		type: 'POST',
		url: 'index.php?route=simple_blog/article/writeComment&simple_blog_article_id='+values,
		dataType: 'json',
		data: 'name=' + encodeURIComponent(name) + '&text=' + encodeURIComponent(comment_text) + '&reply_id=' + user_id,
		beforeSend: function() {
			$('#comment_button'+values).attr('disabled', true);
			$('#comment_button'+values).text('loading...');			
		},
		complete: function() {
			$('#comment_button'+values).attr('disabled', false);
			$('#comment_button'+values).text('Comment');
		},
		success: function(data) {

			$('.alert').remove();

			if (data['error']) {
				$('#comment_text'+values).after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + data['error'] + '</div>');
			}

			if (data['success']) {
				$('#comment_text'+values).val('');
				$('#comment_list'+values).load('index.php?route=simple_blog/article/comment&simple_blog_article_id='+values);
				$('.comment_count'+values).html(data['total_comments']);
			}
		}
	});
	<?php } else { ?>
	$("#openpaidtocontinue").trigger('click');
	<?php } ?>
}
function spam_article(values){
	<?php if(isset($current_seller_info) && isset($current_seller_info['is_paid']) && $current_seller_info['is_paid'] == 1) { ?>
	var spam_text = $('#spam_text'+values).val();
	var name = '<?php echo $username;?>';
	var user_id = '<?php echo $userid;?>';
	$.ajax({
		type: 'POST',
		url: 'index.php?route=simple_blog/article/spamArticle&simple_blog_article_id='+values,
		dataType: 'json',
		data: 'name=' + encodeURIComponent(name) + '&text=' + encodeURIComponent(spam_text) + '&reply_id=' + user_id,
		beforeSend: function() {
			$('#spam_button'+values).attr('disabled', true);
			$('#spam_button'+values).text('loading...');			
		},
		complete: function() {
			$('#spam_button'+values).attr('disabled', false);
			$('#spam_button'+values).text('Add to Spam');
		},
		success: function(data) {

			$('.alert').remove();

			if (data['error']) {
				$('#spam_text'+values).after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + data['error'] + '</div>');
			}

			if (data['success']) {
				$('#spam_text'+values).val('');
				location.reload();
			}
		}
	});
	<?php } else { ?>
	$("#openpaidtocontinue").trigger('click');
	<?php } ?>
}
function group_delete(values){
	$.ajax({
		url: "index.php?route=simple_blog/article/groupdelete",
		type: 'post',
		data: 'group_id='+values,
		dataType: 'json',
		beforeSend: function() {
			$('#mygroup_list').addClass('open');		
		},
		success: function (response) {
			$('#mygroup_list').addClass('open');
			$('.group_lists_li'+values).remove();
		},
		error: function(jqXHR, textStatus, errorThrown) {
		   console.log(textStatus, errorThrown);
		}
	});
}
function group_join(values){
	$.ajax({
		url: "index.php?route=simple_blog/article/groupjoin",
		type: 'post',
		data: 'group_id='+values,
		dataType: 'json',
		beforeSend: function() {
			$('#joingroup_list').addClass('open');		
		},
		success: function (response) {
			$('#joingroup_list').addClass('open');
                        $('.group_msg').show();
			$('.group_msg').html('<strong>Success!</strong>.');
			//$('.join_group_lists_li'+values).remove();
			location.reload();
		},
		error: function(jqXHR, textStatus, errorThrown) {
		   console.log(textStatus, errorThrown);
		}
	});
}
function group_leave(values){
	$.ajax({
		url: "index.php?route=simple_blog/article/groupleave",
		type: 'post',
		data: 'group_id='+values,
		dataType: 'json',
		beforeSend: function() {
			$('#joingroup_list').addClass('open');		
		},
		success: function (response) {
			$('#joingroup_list').addClass('open');
                        $('.group_msg').show();
			$('.group_msg').html('<strong>Success!</strong>.');
			//$('.join_group_lists_li'+values).remove();
			location.reload();
		},
		error: function(jqXHR, textStatus, errorThrown) {
		   console.log(textStatus, errorThrown);
		}
	});
}
</script>

<script type="text/javascript">
	
	/*$(function() {

    var bar = $('.bar');
    var percent = $('.percent');
    var status = $('#status');

    $('form.file_up').ajaxForm({
        beforeSend: function() {
            status.empty();
            var percentVal = '0%';
            bar.width(percentVal);
            percent.html(percentVal);
        },
        uploadProgress: function(event, position, total, percentComplete) {
            var percentVal = percentComplete + '%';
            bar.width(percentVal);
            percent.html(percentVal);
        },
        complete: function(xhr) {
            status.html(xhr.responseText);
        }
    });
}); */
</script>
<script type="text/javascript" src="chat/js/chat.js"></script>
<?php echo $footer; ?>