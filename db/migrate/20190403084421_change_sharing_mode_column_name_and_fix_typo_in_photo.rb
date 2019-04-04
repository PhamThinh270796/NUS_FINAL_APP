class ChangeSharingModeColumnNameAndFixTypoInPhoto < ActiveRecord::Migration[5.2]
  def change
    rename_column :photos, :sharing_mode, :is_public
    rename_column :albums, :sharing_mode, :is_public
    rename_column :photos, :descripstion, :description
  end
end
