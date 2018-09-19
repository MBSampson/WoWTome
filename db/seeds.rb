wow_classes = %w(druid hunter mage paladin priest rogue shaman warlock warrior)


CharacterClass.create(
  name: 'druid',
  icon: 'missing.png',
  resource: 'mana',
  specializations: %w(balance feral restoration)
)

CharacterClass.create(
  name: 'hunter',
  icon: 'missing.png',
  resource: 'mana',
  specializations: %w(beast_mastery marksmanship survival)
)

CharacterClass.create(
  name: 'mage',
  icon: 'missing.png',
  resource: 'mana',
  specializations: %w(fire frost arcane)
)

CharacterClass.create(
  name: 'paladin',
  icon: 'missing.png',
  resource: 'mana',
  specializations: %w(holy retribution protection)
)

CharacterClass.create(
  name: 'priest',
  icon: 'missing.png',
  resource: 'mana',
  specializations: %w(holy shadow discipline)
)

CharacterClass.create(
  name: 'rogue',
  icon: 'missing.png',
  resource: 'mana',
  specializations: %w(subtlety assassination combat)
)

CharacterClass.create(
  name: 'shaman',
  icon: 'missing.png',
  resource: 'mana',
  specializations: %w(enhancement elemental restoration)
)

CharacterClass.create(
  name: 'warlock',
  icon: 'missing.png',
  resource: 'mana',
  specializations: %w(destruction demonology affliction)
)

CharacterClass.create(
  name: 'warrior',
  icon: 'missing.png',
  resource: 'rage',
  specializations: %w(arm fury defense)
)









