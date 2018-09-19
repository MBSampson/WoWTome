FactoryGirl.define do
  factory :character do
    association :user
    name { Faker::WorldOfWarcraft.hero }
    level { Faker::Number.between(1, 60) }
    health { Faker::Number.between(1, 5000) }
    location { Faker::Lorem.word  }
    stamina { Faker::Number.between(5, 300) }
    strength { Faker::Number.between(5, 300) }
    spirit { Faker::Number.between(5, 300) }
    agility { Faker::Number.between(5, 300) }
    intelligence { Faker::Number.between(5, 300) }
    gold { Faker::Number.between(0, 50000) }
    achievement_points { Faker::Number.between(0, 4000) }
  end
end
