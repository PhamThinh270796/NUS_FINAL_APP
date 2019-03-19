class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email, null: false, default: ""
      t.string :password
      t.string :profile_picture
      t.string :role, default: "user"
      t.boolean :is_active, default: true
      t.timestamps
    end
  end
end
