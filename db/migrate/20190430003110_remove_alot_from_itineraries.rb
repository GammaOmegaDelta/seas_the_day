class RemoveAlotFromItineraries < ActiveRecord::Migration[5.2]
  def change
    remove_column :itineraries, :country, :string
    remove_column :itineraries, :description, :text
    remove_column :itineraries, :address, :string
    remove_column :itineraries, :category, :string
  end
end