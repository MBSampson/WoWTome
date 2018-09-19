require 'rails_helper'

RSpec.describe Character, :type => :model do
  it 'has name vallihn' do
    character = build(:character)
    expect(character.name).to eq('vallihn')
  end
end
