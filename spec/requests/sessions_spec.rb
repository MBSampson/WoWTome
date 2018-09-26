require 'rails_helper'

describe 'Sessions' do
  it 'signs user in and out' do
    user = User.create!(email: 'user@example.org', account_name: 'accname', password: 'password')

    sign_in user
    get authenticated_test_root_path
    expect(controller.current_user).to eq(user)

    sign_out user
    get authenticated_test_root_path
    expect(controller.current_user).to be_nil
  end

end
