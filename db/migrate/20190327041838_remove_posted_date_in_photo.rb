class RemovePostedDateInPhoto < ActiveRecord::Migration[5.2]
  def change
    remove_column :photos, :posted_date, :date
  end
end
