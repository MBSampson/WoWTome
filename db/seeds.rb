wow_classes = %w(druid hunter mage paladin priest rogue shaman warlock warrior)

CharacterClass.create(
  name: 'druid',
  icon: 'druid-icon.png',
  main_color: 'druid-orange',
  resource: 'mana',
  specializations: %w(balance feral restoration)
)

CharacterClass.create(
  name: 'hunter',
  icon: 'hunter-icon.png',
  main_color: 'hunter-green',
  resource: 'mana',
  specializations: %w(beast_mastery marksmanship survival)
)

CharacterClass.create(
  name: 'mage',
  icon: 'mage-icon.png',
  main_color: 'mage-blue',
  resource: 'mana',
  specializations: %w(fire frost arcane)
)

CharacterClass.create(
  name: 'paladin',
  icon: 'paladin-icon.png',
  main_color: 'paladin-pink',
  resource: 'mana',
  specializations: %w(holy retribution protection)
)

CharacterClass.create(
  name: 'priest',
  icon: 'priest-icon.png',
  main_color: 'priest-white',
  resource: 'mana',
  specializations: %w(holy shadow discipline)
)

CharacterClass.create(
  name: 'rogue',
  icon: 'rogue-icon.png',
  main_color: 'rogue-yellow',
  resource: 'mana',
  specializations: %w(subtlety assassination combat)
)

CharacterClass.create(
  name: 'shaman',
  icon: 'shaman',
  main_color: 'shaman-blue',
  resource: 'mana',
  specializations: %w(enhancement elemental restoration)
)

CharacterClass.create(
  name: 'warlock',
  icon: 'warlock-icon.png',
  main_color: 'warlock-purple',
  resource: 'mana',
  specializations: %w(destruction demonology affliction)
)

CharacterClass.create(
  name: 'warrior',
  icon: 'warrior-icon.png',
  main_color: 'warrior-tan',
  resource: 'rage',
  specializations: %w(arms fury defense)
)
puts 'Generated CharacterClass seeds'

user = User.create!(
  email: 'msam@test.com',
  account_name: 'msam',
  password: '123123',
  password_confirmation: '123123'
)
user.save!

user2 = User.create!(
  email:'mrourke@test.com',
  account_name: 'mrou',
  password: '123123',
  password_confirmation: '123123'
)

user2.save!
puts 'Generated User seeds'

user.characters.create!(
  name: 'vallihn',
  level: 60,
  health: 100,
  location: 'stormwind',
  stamina: 5,
  strength: 5,
  spirit: 5,
  agility: 5,
  intelligence: 5,
  gold: 1000,
  achievement_points: 1280,
  character_class_id: 4,
  spec_id: 2
)
puts 'Generated User Characters'








