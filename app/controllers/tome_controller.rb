class TomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @character = current_user.characters
    @posts = Post.where(user_id: current_user.id)

    @post = Post.new
  end
end
