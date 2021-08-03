class AddModelNameAndImageToInstruments < ActiveRecord::Migration[6.1]
  def change
    add_column :instruments, :model_name, :string
    add_column :instruments, :image_url, :string
  end
end
