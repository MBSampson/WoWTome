class CreateCharacterClasses < ActiveRecord::Migration[5.1]
  def change
    create_table :character_classes do |t|
      t.string :name
      t.string :icon
      t.string :resource
      t.string :specializations, array: true, default: []
      t.timestamps
    end
  end
end
