class AddActivityIdToActivities < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :activity_id, :integer
  end
end
