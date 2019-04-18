class AddItineraryIdToImages < ActiveRecord::Migration[5.2]
  def change
    add_column :images, :itinerary_id, :integer
  end
end
