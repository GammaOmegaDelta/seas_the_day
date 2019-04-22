class RemoveActivitIdAndAddUserAndItineraryId < ActiveRecord::Migration[5.2]
  def change
    remove_column :activities, :activity_id, :integer
    add_column :activities, :user_id, :integer
    add_column :activities, :itinerary_id, :integer
  end
end
