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

<link href="catalog/view/theme/mystonestore/css/bootstrap.css" rel="stylesheet" />
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" /><link href="catalog/view/theme/mystonestore/css/jquery.bxslider.css" rel="stylesheet" />
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet" />
<link href="catalog/view/theme/mystonestore/css/style.css" rel="stylesheet" /> 
<link href="catalog/view/theme/mystonestore/css/estyle.css" rel="stylesheet" /> 
<script src="catalog/view/theme/mystonestore/js/jquery.js"></script>
<script src="catalog/view/theme/mystonestore/js/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/mystonestore/js/bootstrap.min.js"></script>
<script src="catalog/view/theme/mystonestore/js/jquery.popupoverlay.js"></script>
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

<div class="container-fullid">
    <?php #echo $currency; ?>
    <?php #echo $language; ?>
<header>
   <div class="container">   
    <div class="navbar-header col-sm-2 col-lg-2">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
       <div class="logo">
	   <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>" class="navbar-brand logo img-responsive"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
	   </div>
    </div>
    <div class="navbar-collapse collapse col-sm-10 col-lg-10" id="collapseExample">
        <ul class="nav navbar-nav navbar-left">
            <li><a href="<?php echo $home; ?>">Home</a> </li>
          
            <li><a href="index.php?route=product/category&path=20">Products</a> </li>
            
            <li><a href="index.php?route=information/information&information_id=7">24x7 Customer Care </a> </li>
			<?php if($seller_social_site!=''){ ?>
			<li><a href="<?php echo $seller_social_site;?>">Social Site</a> </li>
			<?php } ?>
			<?php if ($logged) { ?> 
            <li class="dropdown">
                <a href="<?php echo $account; ?>" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> <?php echo $customer_name; ?><span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?> <span class="glyphicon glyphicon-wrench" style="text-align: right; margin-left: 30px;"></span></a></li>
                    <li role="separator" class="divider"></li>
                    <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?> <span class="glyphicon glyphicon-log-out" style="text-align: right; margin-left: 30px;"></span></a></li>					
                </ul>
            </li>
			<?php } else { ?>
			<li><a href="<?php echo $login; ?>">Buyer Login</a></li>
			<li><a href="index.php?route=simple_blog/article">Seller Login</a> </li>
			<?php } ?>
			<li class="cart_header"><?php echo $cart; ?></li>


        </ul>
        
    </div>
</div>
</header><?php if($class == 'common-home'){ ?>

<div class="banner">
<div class="bxslider">
  <div><img src="catalog/view/theme/mystonestore/img/granite_warehouse.jpg"></div>
  <div><img src="catalog/view/theme/mystonestore/img/slide2.png"></div>
  <div><img src="catalog/view/theme/mystonestore/img/slide3.png"></div>
</div>



 <div class="product">   
 <div class="container">    
 <ul class="nav navbar-nav home_text">    
 <li>  <p>THE RIGHT CHOICE  FOR YOUR </p> 
 <h2>STONE NEEDS</h2></li>                
 <li>       <label>Product</label>   
 <input class="form-control search_value1" name="search"  type="text">    </li>    
 <li>	<form>       <label> ENTER YOUR CITY</label>          
 <input class="form-control col-md-7" name="search_city" type="text">
 <button type="button" class="search_button search_buttn1 col-md-5">Search</button>   
 </form>    </li>              </ul>     </div></div>
 </div>
 <?php } else { ?>
 <div class="banner_inner">
 <img src="catalog/view/theme/mystonestore/img/main2.jpg">  
 <div class="product_inner">     
 <?php if($class=='product-category-20'){?>    
 <div class="container">          
 <ul class="nav navbar-nav home_text">             
 <li class="col-md-5 col-xs-5">  <p>THE RIGHT CHOICE  FOR YOUR </p>          <h2>STONE NEEDS</h2>      
 <span>THE BEAUTY OF STONE</span></li><li class="col-md-7 col-xs-7"> 
 <form class="navbar-form" role="search">   
 <div class="input-group add-on">    
 <input class="form-control search_value" placeholder="Search" name="search" id="srch-term" type="text">   
 <div class="input-group-btn">      
 <button class="btn  search_button" type="button"><i class="glyphicon glyphicon-search"></i></button>  
 </div>   
 </div> 
 </form></li>                                                </ul>     </div>
 <?php } ?></div>

 </div>   
 
 


 <div class="container_inner_page">
 <p>&nbsp;</p>
 <?php } ?>

 <script type="text/javascript">
     
    $(document).ready(function(){
  $('.bxslider').bxSlider({
    mode: 'horizontal',
    speed:'1000',
     auto: true,
     infiniteLoop: true,
     hideControlOnEnd: true,
  
    
  });
});
 </script>