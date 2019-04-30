class RenameActivityItineraries < ActiveRecord::Migration[5.2]
  def change
    rename_table :activity_itineraries, :activity_users
  end
end
