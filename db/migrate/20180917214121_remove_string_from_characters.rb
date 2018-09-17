class RemoveStringFromCharacters < ActiveRecord::Migration[5.1]
  def up
    remove_column :characters, :string
  end

  def down
    add_column :characters, :string, :string
  end
end
