<?php echo $header; ?><?php echo $column_left; ?>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.min.js" type="text/javascript"></script>
<?php if(isset($error)) { echo $error; } ?>
<form action="<?php echo $action; ?>" method="post" style="width: 450px; margin: 0 auto; display: block;" id="myform">
	<h1 style="margin: 15px 0 0; ">Add Group </h1>
<div class="form-group">
<label>Name</label>
<input type="text" class="form-control" name="group_name" />
</div>

<div class="form-group">
<label>Description</label>
<textarea class="form-control"  name="group_description"></textarea>
</div>

<div class="form-group">
<label>Status</label>
<select name="group_select" class="form-control">
<option value="1">Enabled</option>
<option value="0">Disabled</option>

</select>
</div>

<button type="submit" class="btn btn-success">Submit</button>

</form>

<script>
$(document).ready(function () {

    $('#myform').validate({ // initialize the plugin
        rules: {
            group_name: {
                required: true,
            },
            
        }
    });

});

	</script>
<?php echo $footer; ?>
