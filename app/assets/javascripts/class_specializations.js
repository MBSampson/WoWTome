/*  class_specialization.js

    Hides all specs that are irrelevant to the currently selected character
    class (by default the page selects 'druid').
 */

console.log('class_specialization.js loaded');

$(function() {
  var $classSelect = $( "select[name*='character_class_id']" );
  var $specSelect = $( "select[name='character[spec_id]']" );
  var $newCharacterBtn = $( '#new-character-btn' );

  // Hides all non-druid specs as druid is the default selected class
  hideInitialSpecs($specSelect.find('option'));

  setClickListener($classSelect, $specSelect);
});

function hideInitialSpecs(spec_options) {
  console.log(spec_options);
  for(var i = 0; i < spec_options.length; i++) {
    if(i > 2) {
      $(spec_options).eq(i).hide();
    }
  }
}

// When a user selects a new class option this callback will hide all specs
// that are irrelevant to the currently selected class
function setClickListener(class_select, spec_select) {
  $(class_select).on('change', function(){
    displayRelevantSpecs(spec_select, $(this).val() - 1);
  });
}

function resetSpecs(spec_options) {
  for(var i = 0; i < spec_options.length; i++) {
    $(spec_options).eq(i).show();
  }
}

function displayRelevantSpecs(spec_select, index) {
  spec_options = $(spec_select).find('option');
  resetSpecs(spec_options);

  // Requires each spec set to be grouped in 3s
  var cursor_head = (index + 1) * 3;
  var cursor_tail = cursor_head - 3;

  // Set SELECTED to the first option (cursor_tail)
  // Hide all elements before the tail and at the head (inclusive)
  for(var i = 0; i < spec_options.length; i++) {
    if (i == cursor_tail) {
      $(spec_options).eq(cursor_tail).attr("selected", true).change();
    }
    if (i < cursor_tail || i >= cursor_head) {
      $(spec_options).eq(i).hide();
    }
  }
}
