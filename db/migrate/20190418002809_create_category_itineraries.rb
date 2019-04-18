class CreateCategoryItineraries < ActiveRecord::Migration[5.2]
  def change
    create_table :category_itineraries do |t|

      t.timestamps
    end
  end
end
