class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.integer :id_instruments
      t.integer :id_users
      t.date :end_date
      t.decimal :cost
      t.instruments :references
      t.users :references

      t.timestamps
    end
  end
end