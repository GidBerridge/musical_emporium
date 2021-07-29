class CreateInstruments < ActiveRecord::Migration[6.1]
  def change
    create_table :instruments do |t|
      t.string :instrument_type
      t.string :delivery_option
      t.float :daily_rate
      t.users :references

      t.timestamps
    end
  end
end
