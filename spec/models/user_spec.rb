# frozen_string_literal: true

require 'rails_helper'

describe User, :type => :model do
    context 'has a character' do
    it 'appropriately links a user and character' do
      character = create(:character)
      expect(character.user).to_not be_nil
    end
  end

  context '#sanitize_fields' do
    it 'downcases email and account_name' do
      user = build(:user, email: 'TEST@TEST.COM', account_name: 'TEST', password: 'password')
      user.sanitize_fields

      expect(/[[:upper:]]/.match(user.email)).to be_nil
      expect(/[[:upper:]]/.match(user.account_name)).to be_nil
    end
  end
end
