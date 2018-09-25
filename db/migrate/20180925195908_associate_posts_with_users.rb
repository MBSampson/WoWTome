class AssociatePostsWithUsers < ActiveRecord::Migration[5.1]
  def up
    add_reference :posts, :user, index: true
  end

  def down
    remove_column :posts, :user
  end
end
