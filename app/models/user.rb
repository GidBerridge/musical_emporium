class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  has_many :instruments
  has_many :bookings
  has_many :reviews
  # dependent: :destroy
  has_many :bookings_as_owner, through: :instruments, source: :bookings
  has_one_attached :avatar

  validates :name, presence: true, uniqueness: true
  validates :location, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  accepts_nested_attributes_for :instruments
end
