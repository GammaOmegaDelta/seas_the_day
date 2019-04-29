class AddImageUrlToItineraries < ActiveRecord::Migration[5.2]
  def change
    add_column :itineraries, :image_url, :string
  end
end
