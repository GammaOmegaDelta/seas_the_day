class AddStatusToActivityUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :activity_users, :status, :string
  end
end
