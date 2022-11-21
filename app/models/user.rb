class User < ApplicationRecord
  validates :name, presence: true
  validates :bio, presence: true
  has_one_attached :photo
  has_many :friends
  has_many :bookings
end
