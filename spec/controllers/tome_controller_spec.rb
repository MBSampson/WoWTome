require 'rails_helper'

describe TomeController, type: :controller do
  it 'navigates to the root path and ensures that unauthenticated users are taken to the login page' do
    visit root_path
    expect(page).to have_content('Login')
  end
end
