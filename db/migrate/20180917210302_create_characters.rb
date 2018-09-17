class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :name, :string, limit: 20
      t.timestamps
    end
  end
end
