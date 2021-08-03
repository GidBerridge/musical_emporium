class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_many :instruments, :bookings, :reviews, dependent: :destroy
  has_many :bookings_as_owner, through: :instruments, source: :bookings

  validates :name, presence: true, uniqueness: true
  validates :location, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
