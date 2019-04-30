class RemoveItineraryIdFromImages < ActiveRecord::Migration[5.2]
  def change
    remove_column :images, :itinerary_id, :integer
    add_column :images, :activity_id, :integer
  end
end
