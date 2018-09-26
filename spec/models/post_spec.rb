require 'rails_helper'

describe Post, type: :model do
  describe '#show_author' do
    context 'a post is created' do
      let(:post) { create(:post) }
      it "should return the author's name" do
        expect(post.show_author).to eq(post.user.account_name)
      end
    end
  end
end
