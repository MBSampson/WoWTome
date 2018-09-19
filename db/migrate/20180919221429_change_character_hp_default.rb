class ChangeCharacterHpDefault < ActiveRecord::Migration[5.1]
  def up
    change_column :characters, :health, :integer, default: 0
  end

  def down

    change_column :characters, :health, :integer, nil
  end
end
