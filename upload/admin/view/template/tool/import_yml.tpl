<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
	<div class="container-fluid">
	<div class="row">
	<div class="col-md-8">
      <h1><img src="view/image/import_yml.png" alt="" /> <?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
	</div>
	<div class="col-md-4" style="text-align: right;">
		<a onclick="$('#form').submit();" class="btn btn-primary"><span><i class="fa fa-upload"></i> <?php echo $button_import; ?></span></a>
	</div>
	</div>
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
      <button type="button" form="form-backup" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
  <div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-exchange"></i> <?php echo $heading_title; ?></h3>
    </div>
	<div class="panel-body">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <table class="form">
          <tr>
            <td colspan="2"><?php echo $entry_description; ?></td>
          </tr>
          <tr>
            <td width="25%"><?php echo $entry_restore; ?></td>
            <td><input type="file" name="import_yml_upload" /></td>
          </tr>
          <tr>
            <td width="25%"><?php echo $entry_url; ?></td>
            <td><input type="text" name="import_yml_url" size="50" value="<?php echo isset($settings['import_yml_url']) ? $settings['import_yml_url'] : ''; ?>"/></td>
          </tr>
          <tr>
            <td width="25%"><?php echo $entry_update; ?></td>
            <td>
              <input type="checkbox" name="import_yml_name" <?php if (isset($settings['import_yml_name']) && $settings['import_yml_name'] == 'on') { echo 'checked="checked"'; } ?>/><?php echo $entry_field_name; ?><br />
              <input type="checkbox" name="import_yml_description" <?php if (isset($settings['import_yml_description']) && $settings['import_yml_description'] == 'on') { echo 'checked="checked"'; } ?>/><?php echo $entry_field_description; ?><br />
			  <input type="checkbox" name="import_yml_category" <?php if (isset($settings['import_yml_category']) && $settings['import_yml_category'] == 'on') { echo 'checked="checked"'; } ?>/><?php echo $entry_field_category; ?><br />
              <input type="checkbox" name="import_yml_price" <?php if (isset($settings['import_yml_price']) && $settings['import_yml_price'] == 'on') { echo 'checked="checked"'; } ?>/><?php echo $entry_field_price; ?><br />
              <input type="checkbox" name="import_yml_image" <?php if (isset($settings['import_yml_image']) && $settings['import_yml_image'] == 'on') { echo 'checked="checked"'; } ?>/><?php echo $entry_field_image; ?><br />
              <input type="checkbox" name="import_yml_manufacturer" <?php if (isset($settings['import_yml_manufacturer']) && $settings['import_yml_manufacturer'] == 'on') { echo 'checked="checked"'; } ?>/><?php echo $entry_field_manufacturer; ?><br />
              <input type="checkbox" name="import_yml_attributes" <?php if (isset($settings['import_yml_attributes']) && $settings['import_yml_attributes'] == 'on') { echo 'checked="checked"'; } ?>/><?php echo $entry_field_attribute; ?><br />
            </td>
          </tr>
    		  <tr>
    		    <td width="25%"><?php echo $entry_force; ?></td>
    			  <td><input type="checkbox" name="import_yml_force" <?php if (isset($settings['import_yml_force']) && $settings['import_yml_force'] == 'on') { echo 'checked="checked"'; } ?>/></td>
    		  </tr>
          <tr>
            <td width="25%"><?php echo $entry_save_settings; ?></td>
            <td>
              <a onclick="$('#form').attr('action', '<?php echo $save; ?>'); $('#form').submit();" class="btn btn-primary"><span><i class="fa fa-floppy-o"></i> <?php echo $button_save; ?></span></a>
            </td>
          </tr>
        </table>
      </form>
    </div>
  </div>
  </div>
</div>
<?php echo $footer; ?>