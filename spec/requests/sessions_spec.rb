require 'rails_helper'

describe 'Sessions' do
  context 'user' do
    user = User.create(email: 'user@example.org', account_name: 'accname', password: 'baseball1')
    it 'signs in' do
      sign_in user
      get authenticated_test_root_path
      expect(controller.current_user).to eq(user)
    end

    it 'signs out' do
      sign_out user
      get authenticated_test_root_path
      expect(controller.current_user).to be_nil
    end

    it 'visits Settings page' do
      sign_in user
      get edit_user_registration_path
      expect(response).to be_success

      have_field('Email', with: user.email)
      have_field('Account Name', with: user.account_name)
      have_field('Password')
      have_field('Password Confirmation')
      have_field('Current Password')
    end
  end
end
