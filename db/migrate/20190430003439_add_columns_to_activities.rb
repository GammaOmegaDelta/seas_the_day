class AddColumnsToActivities < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :name, :string
    add_column :activities, :country, :string
    add_column :activities, :description, :text
    add_column :activities, :address, :string
    add_column :activities, :image_url, :string
  end
end