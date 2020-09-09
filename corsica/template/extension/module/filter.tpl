<div class="section-title"><h4><?php echo $heading_title; ?></h4></div>


<div class="filters">
  


    <?php foreach ($filter_groups as $filter_group) { ?>

   <h4><?php echo $filter_group['name']; ?></h4>
   
      <div style="margin-bottom: 25px;" id="filter-group<?php echo $filter_group['filter_group_id']; ?>">
        <?php foreach ($filter_group['filter'] as $filter) { ?>
        <div class="checkbox">
          <label>
            <?php if (in_array($filter['filter_id'], $filter_category)) { ?>
            <input type="checkbox" name="filter[]" value="<?php echo $filter['filter_id']; ?>" checked="checked" />
            <?php echo $filter['name']; ?>
            <?php } else { ?>
            <input type="checkbox" name="filter[]" value="<?php echo $filter['filter_id']; ?>" />
            <?php echo $filter['name']; ?>
            <?php } ?>
          </label>
        </div>
        <?php } ?>
      </div>
    
    <?php } ?>


 <button type="button" id="button-filter" class="btn btn-primary"><?php echo $button_filter; ?></button>



</div>








<script type="text/javascript"><!--
$('#button-filter').on('click', function() {
	filter = [];

	$('input[name^=\'filter\']:checked').each(function(element) {
		filter.push(this.value);
	});

	location = '<?php echo $action; ?>&filter=' + filter.join(',');
});
//--></script>
