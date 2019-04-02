class AddDefaultValueSharingModeToPhoto < ActiveRecord::Migration[5.2]
  def change
    change_column_default :photos, :sharing_mode, from: nil, to: true
  end
end
