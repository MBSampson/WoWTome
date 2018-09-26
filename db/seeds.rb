wow_classes = %w(druid hunter mage paladin priest rogue shaman warlock warrior)
visibility_options = %w(public friends private)

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

user = User.create(
  email: 'msam@test.com',
  account_name: 'msam',
  password: '123123',
  password_confirmation: '123123'
)
user.save!

user2 = User.create(
  email:'mrourke@test.com',
  account_name: 'mrou',
  password: '123123',
  password_confirmation: '123123'
)

user2.save!
puts 'Generated User seeds'

user.characters.create(
  name: 'vallihn',
  level: 60,
  location: 'stormwind',
  gold: 1000,
  achievement_points: 1280,
  character_class_id: 4,
  spec_id: 12
)

user2.characters.create(
  name: 'tricycle',
  level: 60,
  location: 'ironforge',
  gold: 1000,
  achievement_points: 4400,
  character_class_id: 4,
  spec_id: 11
)


4.times do
  class_id = Faker::Number.between(1, 9)
  spec = Faker::Number.between((class_id * 3) - 2, class_id * 3)
  user.characters.create(
    name: Faker::Name.first_name,
    level: Faker::Number.between(0, 60),
    location: 'stormwind',
    gold: Faker::Number.between(0, 50000),
    achievement_points: Faker::Number.between(0, 1200),
    character_class_id: class_id,
    spec_id: spec
  )
end

4.times do
  class_id = Faker::Number.between(1, 9)
  spec = Faker::Number.between((class_id * 3) - 2, class_id * 3)
  user2.characters.create(
    name: Faker::Name.first_name,
    level: Faker::Number.between(0, 60),
    location: 'stormwind',
    gold: Faker::Number.between(0, 50000),
    achievement_points: Faker::Number.between(0, 1200),
    character_class_id: class_id,
    spec_id: spec
  )
end

puts 'Generated User Characters'

7.times do
  user.posts.create(
    content: Faker::MostInterestingManInTheWorld.quote,
    visibility: visibility_options[Faker::Number.between(0, 2)],
    likes: Faker::Number.between(0, 100)
  )
end

7.times do
  user.posts.create(
    content: Faker::OnePiece.quote,
    visibility: visibility_options[Faker::Number.between(0, 2)],
    likes: Faker::Number.between(0, 1000)
  )
end

puts 'Generated User Posts'








