class AddInstrumentToBooking < ActiveRecord::Migration[6.1]
  def change
    add_reference :bookings, :instrument, foreign_key: true
  end
end
