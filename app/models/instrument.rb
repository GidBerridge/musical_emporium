class Instrument < ApplicationRecord

  validates :daily_rate, numericality: { only_float: true }, presence: true
  validates :instrument_type, :delivery_option, :make, :model_name,
            :image_url, presence: true

  belongs_to :user
  has_many :bookings
end
