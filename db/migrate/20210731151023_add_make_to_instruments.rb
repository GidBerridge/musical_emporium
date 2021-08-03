class AddMakeToInstruments < ActiveRecord::Migration[6.1]
  def change
    add_column :instruments, :make, :string
  end
end
