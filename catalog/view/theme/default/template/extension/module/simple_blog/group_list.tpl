<?php echo $header;?>
<link type="text/css" rel="stylesheet" media="all" href="chat/css/chat.css" />
<div class="social_media">
<div class="container">
  <div class="row">

      <div class="col-sm-3 col-lg-3 col-xs-12 social_sidebar">

         <div class="group">
               <h3><a href="<?php echo $group_filter_url.'&myprofile=1';?>"><img src="catalog/view/theme/mystonestore/img/db.png">@<?php echo $username;?></a></h3>

               <div class="nav_collapse">
        <ul class="nav navbar-nav navbar-left">
            <li id="mygroup_list" class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><img src="catalog/view/theme/mystonestore/img/icons/group.png">My Groups</a>
                <ul class="dropdown-menu">
				<?php if($user_group_lists){?>
                   <?php foreach($user_group_lists as $group_rows){?>
                    <li class="group_lists_li<?php echo $group_rows['social_group_id'];?>"><a class="fancybox" href="#group_lists<?php echo $group_rows['social_group_id'];?>"><?php echo $group_rows['name'];?></a><a href="javascript:void(0);" onclick="group_delete('<?php echo $group_rows['social_group_id'];?>')"><i class="glyphicon glyphicon-remove"></i></a></li>
				   <?php } ?>
				<?php } else { ?>
					<li class="group_lists_li">No Groups found</li>
				<?php } ?>
                </ul>
            </li>

            <li class="dropdown">
                <a href="#addgroups" class="dropdown-toggle fancybox"><img src="catalog/view/theme/mystonestore/img/icons/addgroup.png">Add Groups</a>
            </li>
			
			<li id="joingroup_list" class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><img src="catalog/view/theme/mystonestore/img/icons/insight.png">Join Groups</a>
                <ul class="dropdown-menu">
				<?php if($group_lists){?>
                   <?php foreach($group_lists as $group_rows){?>
                    <li class="join_group_lists_li<?php echo $group_rows['social_group_id'];?>"><a class="fancybox" href="#join_group_lists<?php echo $group_rows['social_group_id'];?>"><?php echo $group_rows['name'];?></a></li>
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
            </li>
        </ul>
       
    </div>

         </div>
      </div>

      <div class="col-sm-8 col-lg-8 col-xs-12 post_part">

        

<?php if($group_lists){?>
	<div class="latest_post">
	<h2>Groups</h2>
<?php foreach($group_lists as $group_rows){?>
        <div class="row">
		<div class="join_group_lists_li<?php echo $group_rows['social_group_id'];?>"><a class="fancybox" href="#join_group_lists<?php echo $group_rows['social_group_id'];?>"><?php echo $group_rows['name'];?></a></div>
		</div>
	 
     <?php } } else { ?>
	 
        <div class="row">
			<p>No groups found</p>
		</div>
	 <?php } ?>
	 </div>
      </div>
  </div>
</div>
</div>  
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
</div>
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
						<input type="text" name="name" class="form-control share_text" value="<?php echo $group_rows['name'];?>" placeholder="Name"></textarea>
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

<script>
function add_likes(values,type){
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
}
function upload_files(file_list){
    var file_data = $('#'+file_list).prop('files')[0];
    var form_data = new FormData();                  
    form_data.append('file', file_data);
    //alert(form_data);                             
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
					$('#'+file_list).after('<p>'+response.error+'</p>');
				} else {
					location.reload();
				}
			}
     });
}
function comment_article(values){
	var comment_text = $('#comment_text'+values).val();
	var name = '<?php echo $username;?>';
	$.ajax({
		type: 'POST',
		url: 'index.php?route=simple_blog/article/writeComment&simple_blog_article_id='+values,
		dataType: 'json',
		data: 'name=' + encodeURIComponent(name) + '&text=' + encodeURIComponent(comment_text) + '&reply_id=',
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
}
function spam_article(values){
	var spam_text = $('#spam_text'+values).val();
	var name = '<?php echo $username;?>';
	$.ajax({
		type: 'POST',
		url: 'index.php?route=simple_blog/article/spamArticle&simple_blog_article_id='+values,
		dataType: 'json',
		data: 'name=' + encodeURIComponent(name) + '&text=' + encodeURIComponent(spam_text) + '&reply_id=',
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
			//$('.join_group_lists_li'+values).remove();
			location.reload();
		},
		error: function(jqXHR, textStatus, errorThrown) {
		   console.log(textStatus, errorThrown);
		}
	});
}
</script>
<script type="text/javascript" src="chat/js/chat.js"></script>
<?php echo $footer; ?>