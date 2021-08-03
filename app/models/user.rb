class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :instruments, :bookings, :reviews

  validates :location, :name, presence: true
  validates :name, :email, :encrypted_password, :reset_password_token,
            :reset_password_sent_at, :remember_created_at, uniqueness: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
