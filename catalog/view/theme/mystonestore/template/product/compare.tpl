<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <div class="pull-right">
        <button class="btn btn-primary add_compare_open" title="Add product to compare">+</button>
        <div id="add_compare">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title">Add product to compare</h5>
                <button type="button" class="close add_compare_close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">×</span>
                </button>
              </div>
              <div class="modal-body">
                <div class="row my-2">
                  <div class="col-lg-6 col-sm-6 col-xs-12 table_search">
                    <form id="add_compare_search" method="post"class="form-horizontal">
                      <div class="input-group add-on">
                        <input type="text" class="form-control" name="search" aria-describedby="emailHelp" placeholder="Search" value="">

                        <div class="input-group-btn">
                        <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
                <div class="row my-2">
                  <div class="col-xs-12">
                    <ul class="list-group" id="compare_products_list">
                    </ul>
                  </div>
                </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary add_compare_close" data-dismiss="modal">Close</button>
              </div>
            </div>
          </div>          
        </div>
      </div>
      <h1><?php echo $heading_title; ?></h1>
      <?php if ($products) { ?>
      <table class="table table-bordered">
        <thead>
          <tr>
            <td colspan="<?php echo count($products) + 1; ?>"><strong><?php echo $text_product; ?></strong></td>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td><?php echo $text_name; ?></td>
            <?php foreach ($products as $product) { ?>
            <td><a href="<?php echo $product['href']; ?>"><strong><?php echo $product['name']; ?></strong></a></td>
            <?php } ?>
          </tr>
          <tr>
            <td><?php echo $text_image; ?></td>
            <?php foreach ($products as $product) { ?>
            <td class="text-center"><?php if ($product['thumb']) { ?>
              <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" />
              <?php } ?></td>
            <?php } ?>
          </tr>
          <tr>
            <td><?php echo $text_price; ?></td>
            <?php foreach ($products as $product) { ?>
            <td><?php if ($product['price']) { ?>
              <?php if (!$product['special']) { ?>
              <?php echo $product['price']; ?>
              <?php } else { ?>
              <strike><?php echo $product['price']; ?></strike> <?php echo $product['special']; ?>
              <?php } ?>
              <?php } ?></td>
            <?php } ?>
          </tr>
          <tr>
            <td><?php echo $text_model; ?></td>
            <?php foreach ($products as $product) { ?>
            <td><?php echo $product['model']; ?></td>
            <?php } ?>
          </tr>
          <tr>
            <td><?php echo $text_manufacturer; ?></td>
            <?php foreach ($products as $product) { ?>
            <td><?php echo $product['manufacturer']; ?></td>
            <?php } ?>
          </tr>
          <tr>
            <td><?php echo $text_availability; ?></td>
            <?php foreach ($products as $product) { ?>
            <td><?php echo $product['availability']; ?></td>
            <?php } ?>
          </tr>
          <?php if ($review_status) { ?>
          <tr>
            <td><?php echo $text_rating; ?></td>
            <?php foreach ($products as $product) { ?>
            <td class="rating"><?php for ($i = 1; $i <= 5; $i++) { ?>
              <?php if ($product['rating'] < $i) { ?>
              <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
              <?php } else { ?>
              <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
              <?php } ?>
              <?php } ?>
              <br />
              <?php echo $product['reviews']; ?></td>
            <?php } ?>
          </tr>
          <?php } ?>
          <tr>
            <td><?php echo $text_summary; ?></td>
            <?php foreach ($products as $product) { ?>
            <td class="description"><?php echo $product['description']; ?></td>
            <?php } ?>
          </tr>
          <tr>
            <td><?php echo $text_weight; ?></td>
            <?php foreach ($products as $product) { ?>
            <td><?php echo $product['weight']; ?></td>
            <?php } ?>
          </tr>
          <tr>
            <td><?php echo $text_dimension; ?></td>
            <?php foreach ($products as $product) { ?>
            <td><?php echo $product['length']; ?> x <?php echo $product['width']; ?> x <?php echo $product['height']; ?></td>
            <?php } ?>
          </tr>
        </tbody>
        <?php foreach ($attribute_groups as $attribute_group) { ?>
        <thead>
          <tr>
            <td colspan="<?php echo count($products) + 1; ?>"><strong><?php echo $attribute_group['name']; ?></strong></td>
          </tr>
        </thead>
        <?php foreach ($attribute_group['attribute'] as $key => $attribute) { ?>
        <tbody>
          <tr>
            <td><?php echo $attribute['name']; ?></td>
            <?php foreach ($products as $product) { ?>
            <?php if (isset($product['attribute'][$key])) { ?>
            <td><?php echo $product['attribute'][$key]; ?></td>
            <?php } else { ?>
            <td></td>
            <?php } ?>
            <?php } ?>
          </tr>
        </tbody>
        <?php } ?>
        <?php } ?>
        <tr>
          <td></td>
          <?php foreach ($products as $product) { ?>
          <td><input type="button" value="<?php echo $button_cart; ?>" class="btn btn-primary btn-block" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');" />
            <a href="<?php echo $product['remove']; ?>" class="btn btn-danger btn-block"><?php echo $button_remove; ?></a></td>
          <?php } ?>
        </tr>
      </table>
      <?php } else { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-default"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<script>
    $(document).ready(function() {

      // Initialize the plugin
      $('#add_compare').popup({
        background: false,
        scrolllock: true,
        beforeopen: function() {
          searchProducts('');
        }
      });

      $("#add_compare_search").submit(function(e){
        e.preventDefault();
        var search_text = this.search.value;
        searchProducts(search_text);
      });

      function searchProducts(search_text) {
        var $parent = $("#compare_products_list");
        $("#compare_products_list").html('');
        $("<li />").addClass('list-group-item').html('Loading...').appendTo($parent);
        $.ajax({
          url: 'index.php?route=product/compare/search',
          type: 'post',
          data: 'search=' + search_text,
          dataType: 'json',
          success: function(json) {
            //var json = $.parseJSON(json);
            $("#compare_products_list").html('');console.log(json['products']);
            if(json['products'] && json['products'].length > 0) {
              for(i=0; i < json['products'].length; i++){
                var $li = $("<li />").addClass('list-group-item').appendTo($parent);
                $li.data('product_id', json['products'][i].product_id);
                $li.click(function(){
                  $('#add_compare').popup('hide');
                  compare.add($(this).data('product_id'));
                }).html(json['products'][i].name.trim());
              }
            } else {
              $("<li />").addClass('list-group-item').html('No products found!').appendTo($parent);
            }
          },
          error: function(xhr, ajaxOptions, thrownError) {
            $("#compare_products_list").html('');
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
          }
        });
      }

    });
  </script>
<?php echo $footer; ?>
