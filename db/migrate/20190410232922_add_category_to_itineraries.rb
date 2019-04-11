class AddCategoryToItineraries < ActiveRecord::Migration[5.2]
  def change
    add_column :itineraries, :category, :string
  end
end
