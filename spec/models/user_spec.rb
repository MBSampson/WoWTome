# frozen_string_literal: true

require 'rails_helper'

describe User, :type => :model do
  describe 'User' do
    context 'has a character' do
      let(:user) { create(:user, :with_character) }
      it 'should return the user when referenced' do
        expect(user.characters.first).to be_a Character
      end
    end

    context '#sanitize_fields' do
      let(:user) { create(:user, email: 'TEST@TEST.COM', account_name: 'fireTruck') }
      it 'should downcase email and account_name' do
        expect(/[[:upper:]]/.match(user.email)).to be_nil
        expect(/[[:upper:]]/.match(user.account_name)).to be_nil
      end
    end
  end

  describe 'Admin' do
    # TODO: Implement admins
  end
end
