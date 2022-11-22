class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :friend
  validates :friend_id, uniqueness: { scope: :user_id, message: "You already have a booking with this friend" }
end
