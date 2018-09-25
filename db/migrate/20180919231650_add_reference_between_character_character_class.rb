class AddReferenceBetweenCharacterCharacterClass < ActiveRecord::Migration[5.1]
  def up
    add_reference :characters, :character_class, index: true
  end

  def down
    remove_column :characters, :character_class
  end
end
