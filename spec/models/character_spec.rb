require 'rails_helper'

describe Character, :type => :model do
  context '#sanitize_fields' do
    it 'downcases name and location' do
      character = build(:character)
      character.save!

      expect(/[[:upper:]]/.match(character.name)).to be_nil
      expect(/[[:upper:]]/.match(character.location)).to be_nil
    end
  end

  context '#calculate_stats' do
    it 'has properly calculated stats (level + stat)' do
      base_stat_value = 5
      stamina_multiplier = 10
      character = build(:character)
      stat_value = base_stat_value + character.level
      character.save!

      expect(character.stamina).to eq(stat_value)
      expect(character.strength).to eq(stat_value)
      expect(character.spirit).to eq(stat_value)
      expect(character.agility).to eq(stat_value)
      expect(character.intelligence).to eq(stat_value)

      expect(character.health).to eq(stamina_multiplier * character.stamina)
    end
  end
end
