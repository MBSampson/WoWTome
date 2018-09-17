class SwapUserCharacterRelationship < ActiveRecord::Migration[5.1]
  def up
    remove_reference :users, :character, foreign_key: true
    add_reference :characters, :user, foreign_key: true
  end

  def down
    remove_reference :characters, :user, foreign_key: true
    add_reference :users, :character, foreign_key: true
  end
end
