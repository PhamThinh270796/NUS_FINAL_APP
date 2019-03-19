class AddIsActiveAndSetDefaultRoleInUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :is_active, :boolean, default: true
    change_column_default :users, :role, from: nil, to: 'user'
  end
end
