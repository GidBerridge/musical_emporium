class RemoveInstrumentsFromBookings < ActiveRecord::Migration[6.1]
  def change
    remove_column :bookings, :instruments_id
  end
end
