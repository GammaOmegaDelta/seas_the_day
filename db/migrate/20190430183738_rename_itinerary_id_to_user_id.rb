class RenameItineraryIdToUserId < ActiveRecord::Migration[5.2]
  def change
    rename_column :activity_users, :itinerary_id, :user_id
  end
end
