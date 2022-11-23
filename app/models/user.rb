class User < ApplicationRecord
  ROLE = %w[Customer Friend]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validates :name, :email, presence: true
  # validates :email, uniqueness: true
  # validates :password, length: { in: 6..50 }
  # has_one_attached :photo
  has_many :primary_bookings, class_name: 'Booking', foreign_key: 'costumer_id'
  has_many :secondary_bookings, class_name: 'Booking', foreign_key: 'friend_id'
end
