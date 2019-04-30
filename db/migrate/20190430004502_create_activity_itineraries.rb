class CreateActivityItineraries < ActiveRecord::Migration[5.2]
  def change
    create_table :activity_itineraries do |t|
      t.integer :itinerary_id
      t.integer :activity_id

      t.timestamps
    end
  end
end
