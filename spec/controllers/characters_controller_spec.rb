require 'rails_helper'

RSpec.describe CharactersController, type: :controller do
  it 'allows a user to create a character' do
    visit new_character_path
  end
end
