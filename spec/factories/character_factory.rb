FactoryGirl.define do
  factory :character do
    association :user
    sequence :name do |i|
      "#{Faker::Name.first_name} #{i}"
    end
    level { Faker::Number.between(1, 60) }
    health 0
    location { Faker::Lorem.word  }
    stamina 5
    strength 5
    spirit 5
    agility 5
    intelligence 5
    gold { Faker::Number.between(0, 50000) }
    achievement_points { Faker::Number.between(0, 4000) }
    character_class

    trait :arms_warrior do
      spec_id 25
      association :character_class, factory: [:character_class, :warrior]
    end

    trait :feral_druid do
      spec_id 2
      association :character_class, factory: [:character_class, :druid]
    end

    trait :frost_mage do
      spec_id 8
      association :character_class, factory: [:character_class, :mage]
    end
  end
end
