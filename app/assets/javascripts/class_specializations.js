/*  class_specialization.js
 *
 *  Appends an on change listener to CharacterClass select elem which when
 *  triggered hides all other class specializations that are not relevant
 *  to the current selected specialization.
 */

console.log('class_specialization.js loaded');

$(function() {
  var $classSelect = $( "select[name*='character_class_id']" );
  var $specSelect = $( "select[name*='specialization']" );
  var $newCharacterBtn = $( '#new-character-btn' );

  // Hides all non-druid specs as druid is the default selected class
  hideInitialSpecs($specSelect.find('option'));


  setClickListener($classSelect, $specSelect);
});

// Default character class select option -> druid
// hides all non-druid specs
function hideInitialSpecs(spec_options) {
  for(var i = 0; i < spec_options.length; i++) {
    if(i > 2) {
      $(spec_options).eq(i).hide();
    }
  }
}

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

// Hides all character class specs that are not relevant
// to the current selected character class
function displayRelevantSpecs(spec_select, index) {
  spec_options = $(spec_select).find('option');
  resetSpecs(spec_options);

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


// TO-DO
// Does not work on initial page load!
