require 'rails_helper'

describe Character, :type => :model do
  describe '#sanitize_fields' do
    context 'a new character is created' do
      let(:character) { create(:character, name: 'DWIGHT', location: 'DUNDERMIFFLIN') }
      it 'should downcase the name and location after save' do
        expect(/[[:upper:]]/.match(character.name)).to be_nil
        expect(/[[:upper:]]/.match(character.location)).to be_nil
      end
    end
  end

  describe '#calculate_stats' do
    context 'a new character is created' do
      let(:character) { create(:character) }
      it "should assign a character's stats & health based upon the character's level" do
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
  end

  describe '#show_spec' do
    context 'character is a feral druid' do
      let(:feral_druid) { create(:character, :feral_druid) }
      it "should return 'feral'" do
        expect(feral_druid.show_spec).to eq('feral')
      end
    end

    context 'character is an arms warrior' do
      let(:arms_warrior) { create(:character, :arms_warrior) }
      it "should return 'arms'" do
        expect(arms_warrior.show_spec).to eq('arms')
      end
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
