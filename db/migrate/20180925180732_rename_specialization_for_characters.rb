class RenameSpecializationForCharacters < ActiveRecord::Migration[5.1]
  def up
    rename_column :characters, :specialization, :spec_id
  end

  def down
    rename_column :characters, :spec_id, :specialization
  end
end
