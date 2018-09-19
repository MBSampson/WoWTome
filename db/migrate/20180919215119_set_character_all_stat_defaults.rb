class SetCharacterAllStatDefaults < ActiveRecord::Migration[5.1]
  def up
    change_column :characters, :strength, :integer, default: 5
    change_column :characters, :spirit, :integer, default: 5
    change_column :characters, :agility, :integer, default: 5
    change_column :characters, :intelligence, :integer, default: 5
  end

  def down
    change_column :characters, :strength, :integer, nil
    change_column :characters, :spirit, :integer, nil
    change_column :characters, :agility, :integer, nil
    change_column :characters, :intelligence, :integer, nil
  end
end


