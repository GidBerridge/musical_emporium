class RenameModelNameToInstrumentName < ActiveRecord::Migration[6.1]
  def change
    rename_column :instruments, :model_name, :instrument_name
  end
end
