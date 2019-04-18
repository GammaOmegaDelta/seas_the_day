class CreateWishlistItineraries < ActiveRecord::Migration[5.2]
  def change
    create_table :wishlist_itineraries do |t|
      t.integer :user_id
      t.integer :itinerary_id
      t.string :status
      t.integer :order_id

      t.timestamps
    end
  end
end
