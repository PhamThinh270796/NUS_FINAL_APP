class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :album_title
      t.string :description
      t.boolean :sharing_mode
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
