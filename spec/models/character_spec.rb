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
      character = create(:character)
      base_stat_value = 5
      stat_value = base_stat_value + character.level
      stamina_multiplier = 10
      
      expect(character.stamina).to eq(stat_value)
      expect(character.strength).to eq(stat_value)
      expect(character.spirit).to eq(stat_value)
      expect(character.agility).to eq(stat_value)
      expect(character.intelligence).to eq(stat_value)

      expect(character.health).to eq(stamina_multiplier * character.stamina)
    end
  end

  context '#show_spec' do
    it "returns a character's specialization" do
      arms_warrior = create(:character, :arms_warrior)
      feral_druid = create(:character, :feral_druid)
      frost_mage = create(:character, :frost_mage)

      expect(arms_warrior.show_spec).to eq('arms')
      expect(feral_druid.show_spec).to eq('feral')
      expect(frost_mage.show_spec).to eq('frost')
    end
  end

  describe '#show_class' do
    context 'character is an arms warrior' do
      let(:arms_warrior) { create(:character, :arms_warrior) }
      it "should return 'warrior'" do
        expect(arms_warrior.show_class).to eq('warrior')
      end
    end

    context 'character is a feral druid' do
      let(:feral_druid) { create(:character, :feral_druid) }
      it "should return 'druid'" do
        expect(feral_druid.show_class).to eq('druid')
      end
    end
  end
end
