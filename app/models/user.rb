class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

<<<<<<< HEAD
  # validates :name, presence: true
  # validates :bio, presence: true
  # has_one_attached :photo
  # has_many :friends
  # has_many :bookings
=======
  # validates :name, :email, presence: true
  # validates :email, uniqueness: true
  # validates :password, length: { in: 6..50 }
>>>>>>> 8426968e48de3892d0508df7efd40ea94b42f373
end
