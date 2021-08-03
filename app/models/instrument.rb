class Instrument < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :instrument_type, :delivery_option, :daily_rate, :make, :model_name, :image_url, presence: true
end
