class Booking < ApplicationRecord
  belongs_to :users
  belongs_to :instruments

  validates :start_date, :end_date, presence: true
  validates :cost, presence: true
end
