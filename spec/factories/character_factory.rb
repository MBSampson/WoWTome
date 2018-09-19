FactoryGirl.define do
  factory :character do
    association :user
    sequence :name do |i|
      "#{Faker::Name.first_name} #{i}"
    end
    level 20
    health 0
    location { Faker::Lorem.word  }
    stamina 5
    strength 5
    spirit 5
    agility 5
    intelligence 5
    gold { Faker::Number.between(0, 50000) }
    achievement_points { Faker::Number.between(0, 4000) }
  end
end
