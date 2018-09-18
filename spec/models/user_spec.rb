require 'rails_helper'

RSpec.describe User, :type => :model do
  it 'has account_name of Ash' do
    user = User.new
    user.account_name = 'Ash'

    expect(user.account_name).to eq('Ash')
  end
end
