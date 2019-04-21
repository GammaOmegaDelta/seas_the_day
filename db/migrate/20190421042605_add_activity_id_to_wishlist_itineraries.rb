class AddActivityIdToWishlistItineraries < ActiveRecord::Migration[5.2]
  def change
    add_column :wishlist_itineraries, :activity_id, :integer
  end
end
