module CharactersHelper

  def display_character_class_select(form)
    wow_classes = [
      ['druid', 1],
      ['hunter', 2],
      ['mage', 3],
      ['paladin', 4],
      ['priest', 5],
      ['rogue', 6],
      ['shaman', 7],
      ['warlock', 8],
      ['warrior', 9]
    ]
    class_specs = [
      ['balance', 1],
      ['feral', 2],
      ['restoration', 3],
      ['beast_mastery', 4],
      ['marksmanship', 5],
      ['survival', 6],
      ['fire', 7],
      ['frost', 8],
      ['arcane', 9]
    ]

    capture do
      concat form.select(:character_class_id, wow_classes)
      concat form.select(:class_spec, class_specs)
    end
  end
end
