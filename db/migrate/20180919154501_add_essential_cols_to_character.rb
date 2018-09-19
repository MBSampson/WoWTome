class AddEssentialColsToCharacter < ActiveRecord::Migration[5.1]
  def up
    add_column :characters, :level, :integer
    add_column :characters, :health, :integer
    add_column :characters, :location, :integer

    add_column :characters, :stamina, :integer
    add_column :characters, :strength, :integer
    add_column :characters, :spirit, :integer
    add_column :characters, :agility, :integer
    add_column :characters, :intelligence, :integer

    add_column :characters, :gold, :integer
    add_column :characters, :achievement_points, :integer
    add_column :characters, :professions, :string, array: true, default: []
  end

  def down
    remove_column :characters, :level
    remove_column :characters, :health
    remove_column :characters, :location

    remove_column :characters, :stamina
    remove_column :characters, :strength
    remove_column :characters, :spirit
    remove_column :characters, :agility
    remove_column :characters, :intelligence

    remove_column :characters, :gold
    remove_column :characters, :achievement_points
    remove_column :characters, :professions
  end
end
