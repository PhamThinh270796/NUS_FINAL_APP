class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :title
      t.string :descripstion
      t.integer :liked
      t.date :posted_date
      t.boolean :sharing_mode
      t.belongs_to :album, index: true
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
