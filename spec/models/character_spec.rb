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
end
