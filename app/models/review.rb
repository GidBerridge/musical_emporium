class Review < ApplicationRecord
  belongs_to :user

  validates :title, :description, :created_at, :updated_at, presence: true
end
