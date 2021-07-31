class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.float:cost
      t.references :instruments
      t.references :users

      t.timestamps
    end
  end
end
