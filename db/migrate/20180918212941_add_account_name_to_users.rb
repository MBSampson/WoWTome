class AddAccountNameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :account_name, :string
    add_index :users, :account_name, unique: true
  end
end
