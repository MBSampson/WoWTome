class AddClassSpecToCharacters < ActiveRecord::Migration[5.1]
  def up
    add_column :characters, :specialization, :integer
  end

  def down
    remove_column :characters, :specialization
  end
end
