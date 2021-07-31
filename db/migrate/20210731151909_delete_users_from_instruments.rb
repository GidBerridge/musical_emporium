class DeleteUsersFromInstruments < ActiveRecord::Migration[6.1]
  def change
    remove_column :instruments, :users_id
  end
end
