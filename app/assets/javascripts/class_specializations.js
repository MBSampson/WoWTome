// Initializes the spec select to only show druid specs (druid is the default
// value for the new character select
$(function() {
  var $classSelect = $( "select[name*='character_class_id']" );
  var $specSelect = $( "select[name*='class_spec']" );

  // Hides all non-druid specs
  hideInitialSpecs($specSelect.find('option'));

  setClickListeners($classSelect, $specSelect);
});

function hideInitialSpecs(spec_options) {
  for(var i = 0; i < spec_options.length; i++) {
    if(i > 2) {
      $(spec_options).eq(i).hide();
    }
  }
}

function setClickListeners(class_select, spec_select) {
  $(class_select).on('change', function(){
    hideSpecs(spec_select, $(this).val() - 1);
  });
}

function resetSpecs(spec_options) {
  console.log("reset specs");
  for(var i = 0; i < spec_options.length; i++) {
    $(spec_options).eq(i).show();
  }
}

function hideSpecs(spec_select, index) {
  spec_options = $(spec_select).find('option');
  resetSpecs(spec_options);

  // test comment
  var bounds = (index + 1) * 3;
  var upper_bounds = bounds;
  var lower_bounds = bounds - 3;

  console.log('i:', index);
  console.log('lower', lower_bounds);
  console.log('upper', upper_bounds);

  if(upper_bounds == 3) {
    for (var i = 0; i < spec_options.length; i++) {
      if (i >= upper_bounds) {
        $(spec_options).eq(lower_bounds).attr("selected", true).change();
        $(spec_options).eq(i).hide();
      }
    }
  } else if (upper_bounds > 4 && upper_bounds < 25) {
    for(var i = 0; i < spec_options.length; i++) {
      if (i == lower_bounds) {
        $(spec_options).eq(lower_bounds).attr("selected", true).change();
      }
      if (i < lower_bounds || i >= upper_bounds) {
        $(spec_options).eq(i).hide();
      }
    }
  } else {
    for(var i = 0; i < spec_options.length; i++) {
      if (i < lower_bounds) {
        $(spec_options).eq(lower_bounds).attr("selected", true).change();
        $(spec_options).eq(i).hide();
      }
    }
  }
}
