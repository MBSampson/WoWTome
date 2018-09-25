class AddMainColorToCharacterClass < ActiveRecord::Migration[5.1]
  def up
    add_column :character_classes, :main_color, :string
  end

  def down
    remove_column :character_classes, :main_color
  end
end
