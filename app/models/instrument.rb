class Instrument < ApplicationRecord

  validates :daily_rate, numericality: { only_float: true }, presence: true
  validates :instrument_type, :delivery_option, :make, :instrument_name, presence: true

  belongs_to :user
  has_many :bookings
  has_one_attached :photo
end
