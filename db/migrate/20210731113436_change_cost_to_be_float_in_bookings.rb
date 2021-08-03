class ChangeCostToBeFloatInBookings < ActiveRecord::Migration[6.1]
  def change
    change_column :bookings, :cost, :float
  end
end
