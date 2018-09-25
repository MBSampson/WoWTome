FactoryGirl.define do
  factory :character_class do
    name 'class'
    icon 'class-icon.png'
    specializations %w( spec1 spec2 spec3 )

    trait :warrior do
      name 'warrior'
      icon 'warrior-icon.png'
      specializations %w( arms fury defense )
    end

    trait :druid do
      name 'druid'
      icon 'druid-icon.png'
      specializations %w( balance feral restoration )
    end

    trait :mage do
      name 'mage'
      icon 'mage-icon.png'
      specializations %w( fire frost arcane )
    end
  end
end
