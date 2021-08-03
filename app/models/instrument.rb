class Instrument < ApplicationRecord

  validates :daily_rate, numericality: { only_float: true }, presence: true
  validates :instrument_type, :delivery_option, presence: true
            # :make,
            # :image_url, :instrument_name

  belongs_to :user
  has_many :bookings
end
