class ChangeLocationToString < ActiveRecord::Migration[5.1]
  def up
    change_column :characters, :location, :string
  end

  def down
    change_column :characters, :location, :integer
  end
end
