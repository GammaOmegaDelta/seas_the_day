class CreateItineraries < ActiveRecord::Migration[5.2]
  def change
    create_table :itineraries do |t|
      t.string :country
      t.string :name
      t.text :description
      t.string :address
      t.text :image_url

      t.timestamps
    end
  end
end
