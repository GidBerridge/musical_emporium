class Instrument < ApplicationRecord
  belongs_to :users
  has_many :bookings

  validates :instrument_type, :delivery_option, presence: true
  validates :daily_rate, numericality: { only_float: true }, presence: true
end
