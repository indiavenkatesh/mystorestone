<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  
  <div class="container-fluid">
   
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-list"></i> <?php echo "Group Members"; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $delete; ?>" method="post" enctype="multipart/form-data" id="form-category">
          <div class="table-responsive">
            <table class="table table-bordered table-hover">
              <thead>
                <tr>
                  <td>Name</td>
                  <td>Action</td>
                </tr>
              </thead>
              <tbody>
                <?php if (!empty($group_members)) {     ?>
                <?php foreach ($group_members as $category) { ?>
                <tr>
                
                  <td class="text-left"><?php echo $category['name']; ?></td>
                  <td class="text-right">

                    <?php if($category['status'] == "1") { ?>
                        <a href="<?php echo $category['change_status_deactive']; ?>" data-toggle="tooltip"  class="btn btn-danger">Deactivate</a>
                    <?php } else { ?>

                         <a href="<?php echo $category['change_status_active']; ?>" data-toggle="tooltip"  class="btn btn-primary">Activate</a>


                    <?php } ?>
                        <a href="<?php echo $category['delete']; ?>" data-toggle="tooltip"  class="btn btn-danger"><i class="fa fa-remove"></i></a>
                    </td>
                </tr>
                <?php } ?>
                <?php } else { ?>
                <tr>
                  <td class="text-center" colspan="4">No Data Found</td>
                </tr>
                <?php } ?>
              </tbody>
            </table>
          </div>
        </form>
        
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>