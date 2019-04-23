class RemoveColumnFromActivities < ActiveRecord::Migration[5.2]
  def change
    remove_column :activities, :itinerary_id, :integer
  end
end
