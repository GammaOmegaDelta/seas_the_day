class AddCategoryIdToCategoryItineraries < ActiveRecord::Migration[5.2]
  def change
    add_column :category_itineraries, :category_id, :string
    add_column :category_itineraries, :itinerary_id, :string
  end
end
