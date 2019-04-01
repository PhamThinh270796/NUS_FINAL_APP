class AddIsActiveAndSetDefaultRoleInUsers < ActiveRecord::Migration[5.2]
  def change
    change_column_default :users, :role, from: nil, to: 'user'
  end
end
