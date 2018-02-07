<?php if($comments) { ?>
<?php $count_comments_i = 1; $count_comments = count($comments); ?>
	<?php foreach ($comments as $comment) { ?>
	<div class="<?php echo ($count_comments > 5 && $count_comments_i <= ($count_comments-5)) ? 'hide':'';?>">
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
	</div>
	<?php $simple_blog_article_ids = $comment['simple_blog_article_id']; $count_comments_i++; } ?>	
	<?php if($count_comments > 5){ ?>
	<div class="col-sm-12 pull-right">
	<a href="#commentpost<?php echo $simple_blog_article_ids; ?>" class="comment_article fancybox">View More</a>
	</div>
	<?php } ?>
<?php } ?>