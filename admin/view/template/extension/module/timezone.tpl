<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-account" data-toggle="tooltip" title="<?php echo $lng['button_save']; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $lng['button_cancel']; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <?php if ($success) { ?>
    <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $lng['text_edit']; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-account" class="form-horizontal">
          <div class="form-group">
            <label class="col-sm-2 control-label"><?php echo $lng['entry_status']; ?></label>
            <div class="col-sm-2">
              <select name="timezone_status" class="form-control">
                <option value="1"><?php echo $lng['text_enabled']; ?></option>
                <option <?php if (!$status) echo 'selected'; ?> value="0"><?php echo $lng['text_disabled']; ?></option>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label">Timezone</label>
            <div class="col-sm-4">
              <div>PHP Time: <?php echo $php_time; ?></div>
              <div>Database Time: <?php echo $db_time; ?></div>
              <select name="timezone_timezone" class="form-control">
                <option value=''></option>
                <?php foreach ($timezones as $r) { ?>
                <option <?php if ($r == $timezone) echo 'selected'; ?> value="<?php echo $r; ?>"><?php echo $r; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
        </form>
      </div>
    </div>
    <div class="row" id="support"><a href="mailto:trile7@gmail.com?Subject=<?php echo urlencode($heading_title); ?>">Support Email</a></div>
    <div class="row" id="upgrade">Upgrade:
      <ol>
        <li><a href="https://www.opencart.com/index.php?route=marketplace/extension/info&extension_id=16023" target="_blank">Check for new upgrade</a></li>
        <li>Download, unzip, and upload file to opencart installation root</li>
        <li><a href="index.php?route=extension/module/timezone/install&token=<?php echo $token; ?>&redirect=1">Complete upgrade process</a></li>
        <li><a href="http://paypal.me/tlecoding" target="_blank">Donate</a></li>
      </ol>
      <a href="http://tlecode.com" target="_blank">My other extensions</a>
    </div>
  </div>
</div>
<?php echo $footer; ?>