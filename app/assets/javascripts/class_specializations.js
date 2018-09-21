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

  //
  var cursor_head = (index + 1) * 3;
  var cursor_tail = cursor_head - 3;

  if(cursor_head == 3) {
    for (var i = 0; i < spec_options.length; i++) {
      if (i >= cursor_head) {
        $(spec_options).eq(cursor_tail).attr("selected", true).change();
        $(spec_options).eq(i).hide();
      }
    }
  } else if (cursor_head > 4 && cursor_head < 25) {
    for(var i = 0; i < spec_options.length; i++) {
      if (i == cursor_tail) {
        $(spec_options).eq(cursor_tail).attr("selected", true).change();
      }
      if (i < cursor_tail || i >= cursor_head) {
        $(spec_options).eq(i).hide();
      }
    }
  } else {
    for(var i = 0; i < spec_options.length; i++) {
      if (i < cursor_tail) {
        $(spec_options).eq(cursor_tail).attr("selected", true).change();
        $(spec_options).eq(i).hide();
      }
    }
  }
}
