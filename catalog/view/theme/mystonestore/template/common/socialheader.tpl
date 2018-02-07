<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>

<link href="catalog/view/theme/mystonestore/css/font-awesome.css" rel="stylesheet">
    <link href="catalog/view/theme/mystonestore/css/bootstrap.css" rel="stylesheet">
    <link href="catalog/view/theme/mystonestore/css/jquery.bxslider.css" rel="stylesheet">
    <link rel="stylesheet" href="catalog/view/theme/mystonestore/ChatJs/css/jquery.chatjs.css"/>
    <link href="catalog/view/theme/mystonestore/css/jquery.fancybox.css" rel="stylesheet"> 
   <link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet">

   <link href="catalog/view/theme/mystonestore/css/style.css" rel="stylesheet"> 
  
    <script src="catalog/view/theme/mystonestore/js/jquery.js"></script>
	<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    <script type="text/javascript" src="catalog/view/theme/mystonestore/js/bootstrap.min.js"></script>
    <script src="catalog/view/theme/mystonestore/ChatJs/js/jquery.autosize.js"></script>
    <script src="catalog/view/theme/mystonestore/js/jquery.fancybox.js"></script>


    <script type="text/javascript">
        
         $(document).ready(function() {
        $('#showmenu').click(function() {
                $('.menu').slideToggle("fast");
        });
		
		
			
    });
    </script>
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">
<div class="container-fullid" id="social_container">
    <?php #echo $currency; ?>
    <?php #echo $language; ?>
<header class="social_media_header">
  
   <div class="container">
    <div class="navbar-header col-md-3 col-sm-3 col-xs-12">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
       <div class="logo">  
	    <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>" class="navbar-brand logo"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
		  </div>
    </div>
    <div class="navbar-collapse collapse col-md-9 col-sm-9 col-xs-12">
        <ul class="nav navbar-nav navbar-left col-md-8 col-sm-8 col-xs-12">
            <li><form class="navbar-form search_box" action="#">
    <div class="input-group form-group add-on">
      <input class="form-control" placeholder="Search" name="blog_search" value="<?php echo $search_value;?>" id="blog_search" type="text">
      <div class="input-group-addon">
        <button class="blog_search" id="blog_search_button" type="button"><i class="glyphicon glyphicon-search"></i></button>
      </div>
    </div>
  </form></li>

           
        </ul>
        <ul class="nav navbar-nav navbar-right col-md-4 col-sm-4 col-xs-12">
           
            <li><a href="index.php?route=simple_blog/article&token=<?php echo $token;?>"><img src="catalog/view/theme/mystonestore/img/icons/home.png"></a></li>
             <li class="dropdown">
			 <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><img src="catalog/view/theme/mystonestore/img/icons/bell.png"></a>
             <?php if ($notifications) { ?>  
			 <ul class="dropdown-menu">
				<?php foreach($notifications as $notification_row){?>
				<li><a href="#readmore<?php echo $notification_row['simple_blog_article_id']; ?>" class="fancybox"><?php echo $notification_row['username'].' '.$notification_row['type'].' on your post';?></a></li>
				<li role="separator" class="divider"></li>
				<?php } ?>
             </ul>
  			 <?php } ?>
			 </li>
             <li class="dropdown"><a href="#"  class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><img src="catalog/view/theme/mystonestore/img/icons/message.png"></a> 
			 <ul class="dropdown-menu">
				<?php 
				if(!empty($users_lists)){ 
				foreach($users_lists as $users_lists_row){?>
				<li><img class="profile-picture" src="http://placehold.it/50/55C1E7/fff&text=<?php echo substr($users_lists_row['firstname'],0,2);?>">
					<a href="javascript:void(0)" onclick="javascript:chatWith('<?php echo $users_lists_row['customer_id'];?>','<?php echo $users_lists_row['firstname'];?>')"><?php echo $users_lists_row['firstname'];?></a></li>
				<li role="separator" class="divider"></li>
				<?php } }else{ ?>
					<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;No User Online  </li>
        			<?php } ?>
             </ul> 
			 </li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><img src="catalog/view/theme/mystonestore/img/icons/single.png"></a>
                <ul class="dropdown-menu">
                   <?php if ($logged) { ?>                  
                    <li><a href="<?php echo $account; ?>">Settings <span class="glyphicon glyphicon-wrench" style="text-align: right; margin-left: 30px;"></span></a></li>
                    <li role="separator" class="divider"></li>
                    <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?> <span class="glyphicon glyphicon-log-out" style="text-align: right; margin-left: 30px;"></span></a></li>
					<?php } else { ?>
                    <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?> <span class="glyphicon glyphicon-log-in" style="text-align: right; margin-left: 30px;"></span></a></li>
                    <li role="separator" class="divider"></li>
					<li><a href="<?php echo $register; ?>"><?php echo $text_register; ?> <span class="glyphicon glyphicon-user" style="text-align: right; margin-left: 30px;"></span></a></li>
					<?php } ?>
                </ul>
            </li>
        </ul>
    </div>
</div>
</header>
<script>
$(document).ready(function() {
$('#blog_search_button').click(function(e) {
	e.preventDefault();
	var url = $('base').attr('href') + 'index.php?route=simple_blog/article&token=<?php echo $token;?>';
	var value = $('#blog_search').val();
	if (value) {		
		url += '&blog_search=' + encodeURIComponent(value);
	}	
	window.location = url;
});
$('#blog_search').on('keydown', function(e) {
	if (e.keyCode == 13) {
		e.preventDefault();
		$('#blog_search_button').trigger('click');
	}
});
});
</script>