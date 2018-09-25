require 'rails_helper'

describe Post, type: :model do
  context '#show_author' do
    it "should return the author's account name" do
      post = create(:post)
      expect(post.show_author).to eq(post.user.account_name)
    end
  end
end
