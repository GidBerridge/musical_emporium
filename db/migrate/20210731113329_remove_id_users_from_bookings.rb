class RemoveIdUsersFromBookings < ActiveRecord::Migration[6.1]
  def change
    remove_column :bookings, :id_users, :integer
  end
end
