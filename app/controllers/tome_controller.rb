class TomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @character = current_user.character
  end
end
