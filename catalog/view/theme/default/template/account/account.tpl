<?php echo $header; ?>
<div class="container">
 <!--  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul> --> 
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    
    
    <div id="content" class="<?php echo $class; ?>" style="margin-left:0%;margin-right:0%;margin-top:0%; margin-bottom:0% !important"><?php echo $content_top; ?>
     <center> <h2><?php echo $text_my_account; ?></h2>
     
        <center><botton><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></botton></center>

      
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>