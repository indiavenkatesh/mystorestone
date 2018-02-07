<input type="hidden" id="manu_status" name="manu_status" value="<?php echo $manufacturer_status;?>">
<input type="hidden" id="pri_status" name="pri_status" value="<?php echo $price_filter_status; ?>">


<div class="panel panel-default"  <?php if(isset($manufacturer_status) && $manufacturer_status == "0") {  echo 'style="display: none"';  }?> >
     <div class="list-group">
        <span class="list-group-item active"><?php echo $magicfilter_heading; ?></span>
        <ul class="front-look-li">
            <?php if(isset($manufacturers)){
             foreach ($manufacturers as $manufacturer) {
            $man_id=0;
            if(isset($product_man_list[$manufacturer['manufacturer_id']])){
            $man_id=$product_man_list[$manufacturer['manufacturer_id']];
            }

            ?>
            <li>

                <input type='checkbox' class="magiccheckbox" id='chk_man_id_<?php echo $manufacturer["manufacturer_id"];?>' name='chk_man_id_<?php echo $manufacturer["manufacturer_id"];?>' data-man-id='<?php echo $man_id;?>'/>
                <?php if($magicfilter_image_status == 1) { ?>
                <img src="<?php echo $manufacturer['image']; ?>" width="<?php echo $magicfilter_image_width; ?>" height="<?php echo $magicfilter_image_height; ?>">

                <?php } ?>

                <?php echo $manufacturer['name']; ?>
            </li>
          <?php }
            } ?>
        </ul>
    </div>

</div>

<div class="hide">
<div class="box sidebarFilter panel panel-default"<?php if(isset($price_filter_status) && $price_filter_status == "0") {  echo 'style="display: none"';  }?>  >
     <div class="panel-heading"><?php echo $heading_title; ?></div>
    <div class="list-group">
        <div class="list-group-item">
            <div id="filter-group1">
                <div id="scale-slider"></div>
            </div>
        </div>
    </div>		
    
</div>
<div class="panel-footer text-right">
        <button type="button" id="button-price-filter" class="btn btn-primary"><?php echo $button_filter; ?></button>
</div>
</div>


<script type="text/javascript">
    var manu_status = "<?php echo $manufacturer_status ?>";
            var price_status = "<?php echo $price_filter_status ?>";


            
    (function($) {
    $(function() {
    function runmagicfilter(){
    priceRange = [];
    $('#scale-slider .ui-slider-tip').each(function(){
    priceRange.push($(this).html());
    });
    var producttoset = [];
    $('.magiccheckbox').each(function(){
    var productsplit = [];
    if ($(this).is(':checked')){
    if ($(this).data('man-id') != ''){
    productsplit = $(this).data('man-id').toString().split('_');
    if (productsplit.length > 0){
    $(productsplit).each(function(prodindex, productvalue){
    producttoset.push(productvalue);
    });
    }
    }
    }
    });
    $('.<?php echo $product_class; ?>').hide();
    $('.clearfix').remove();
    $('.<?php echo $product_class; ?>').each(function(){
    var product_id = 0;
    var product_str = '';
    product_str = $(this).find('a').attr('href');
    product_str = product_str.substring(product_str.indexOf('product_id='));
    product_str = product_str.replace('product_id=', '');
    product_id = product_str;
    if ($(this).find(".price span.price-new").length) {
    var price = $(this).find(".price span.price-new").html().replace('<?php echo $price_code; ?>', '').replace(',', '');
    } else {
    var text = $(this).find('.price').html().replace('<?php echo $price_code; ?>', '');
    if ($(this).find(".price span").length) {
    var price = text.substring(0, text.indexOf('<span')).replace(',', '');
    } else {
    var price = text.replace(',', '');
    }
    }
var price_flg=0;
var man_flg=0;
 price=price.replace(/[^\d.]/g, '');
    price = parseInt(price);
    if (  $('#pri_status').val() === '1'){
       
    if (!isNaN(price) && (price > priceRange[0] && price < priceRange[1])){
    $(this).fadeIn("slow");
    price_flg=1;
     
    }
}
    if ($('#manu_status').val() === '1' ){
            
        if(producttoset.length>0){
    if ($.inArray(product_id, producttoset) == -1){
    $(this).hide();
   } else{
    $(this).fadeIn("slow");
    man_flg=1;
    }
        }
        else{
            man_flg=1;
        }
    }
   if(  $('#pri_status').val() === '1' && $('#manu_status').val() === '1'){
    if(  price_flg == '1' && man_flg == '1'){
    $(this).fadeIn("slow");    
        }  
      
                
        else{
            $(this).hide();
          
        }
        
        }
                        
    
    
    
    });
    }
    $('#button-price-filter').on('click', function() {
    runmagicfilter();
    });
    });
    })(jQuery);

</script>

