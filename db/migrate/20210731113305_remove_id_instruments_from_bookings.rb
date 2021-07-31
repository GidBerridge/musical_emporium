class RemoveIdInstrumentsFromBookings < ActiveRecord::Migration[6.1]
  def change
    remove_column :bookings, :id_instruments, :integer
  end
end
