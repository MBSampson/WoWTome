class AddCharacterToUsers < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :character, foreign_key: true
  end
end
