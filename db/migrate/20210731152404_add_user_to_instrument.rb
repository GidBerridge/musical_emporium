class AddUserToInstrument < ActiveRecord::Migration[6.1]
  def change
    add_reference :instruments, :user, foreign_key: true
  end
end
