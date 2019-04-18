class RemoveImageUrlFromItineraries < ActiveRecord::Migration[5.2]
  def change
    remove_column :itineraries, :image_url, :string
  end
end
