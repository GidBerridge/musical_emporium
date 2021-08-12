class AddCategoryToInstruments < ActiveRecord::Migration[6.1]
  def change
    add_column :instruments, :category, :string

  end
end
