class Swap < ActiveRecord::Migration[5.1]
  def up
    add_reference :characters, :user, foreign_key: true
  end

  def down
    remove_reference :characters, :user, foreign_key: true
  end
end
