module CharactersHelper

  def display_character_class_select(form)
    wow_classes = [
      ['druid',   1],
      ['hunter',  2],
      ['mage',    3],
      ['paladin', 4],
      ['priest',  5],
      ['rogue',   6],
      ['shaman',  7],
      ['warlock', 8],
      ['warrior', 9]
    ]
    class_specs = [
      ['balance',       0],
      ['feral',         1],
      ['restoration',   2],
      ['beast_mastery', 0],
      ['marksmanship',  1],
      ['survival',      2],
      ['fire',          0],
      ['frost',         1],
      ['arcane',        2],
      ['holy',          0],
      ['retribution',   1],
      ['protection',    2],
      ['holy',          0],
      ['shadow',        1],
      ['discipline',    2],
      ['subtlety',      0],
      ['assassination', 1],
      ['combat',        2],
      ['enhancement',   0],
      ['elemental',     1],
      ['restoration',   2],
      ['destruction',   0],
      ['demonology',    1],
      ['affliction',    2],
      ['arms',          0],
      ['fury',          1],
      ['defense',       2],
    ]

    capture do
      concat form.select(:character_class_id, wow_classes)
      concat form.select(:spec_id, class_specs)
    end
  end
end
