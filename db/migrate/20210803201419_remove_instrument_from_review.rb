class RemoveInstrumentFromReview < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key :reviews, column: :instrument_id
  end
end
