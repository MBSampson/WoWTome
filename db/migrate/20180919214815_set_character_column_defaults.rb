class SetCharacterColumnDefaults < ActiveRecord::Migration[5.1]
  def up
    change_column :characters, :stamina, :integer, default: 5
  end

  def down
    change_column :characters, :stamina, :integer, nil
  end
end
