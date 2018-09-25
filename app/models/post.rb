class Post < ApplicationRecord
  belongs_to :user

  def show_author
    self.user.account_name
  end
end
