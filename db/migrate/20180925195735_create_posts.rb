class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.text :content
      t.string :visibility
      t.integer :likes

      t.timestamps
    end
  end
end
