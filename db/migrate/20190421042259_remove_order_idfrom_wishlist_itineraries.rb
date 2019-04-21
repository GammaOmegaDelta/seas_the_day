class RemoveOrderIdfromWishlistItineraries < ActiveRecord::Migration[5.2]
  def change
    remove_column :wishlist_itineraries, :order_id, :integer
  end
end
