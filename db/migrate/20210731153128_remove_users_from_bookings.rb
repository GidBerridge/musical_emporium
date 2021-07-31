class RemoveUsersFromBookings < ActiveRecord::Migration[6.1]
  def change
    remove_column :bookings, :users_id
  end
end
