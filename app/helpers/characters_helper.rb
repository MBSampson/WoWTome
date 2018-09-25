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
      ['balance',       1],
      ['feral',         2],
      ['restoration',   3],
      ['beast_mastery', 4],
      ['marksmanship',  5],
      ['survival',      6],
      ['fire',          7],
      ['frost',         8],
      ['arcane',        9],
      ['holy',          10],
      ['retribution',   11],
      ['protection',    12],
      ['holy',          13],
      ['shadow',        14],
      ['discipline',    15],
      ['subtlety',      16],
      ['assassination', 17],
      ['combat',        18],
      ['enhancement',   19],
      ['elemental',     20],
      ['restoration',   21],
      ['destruction',   22],
      ['demonology',    23],
      ['affliction',    24],
      ['arms',          25],
      ['fury',          26],
      ['defense',       27],
    ]

    capture do
      concat form.select(:character_class_id, wow_classes)
      concat form.select(:spec_id, class_specs)
    end
  end
end
