class AddColumnPathToPhoto < ActiveRecord::Migration[5.2]
  def up
    add_column :photos, :path, :string
    change_column :photos, :album_id, :integer, null: true
  end

  def down
    remove_column :photos, :path, :string
    change_column :photos, :album_id, :integer, null: false
  end
end
