class Booking < ApplicationRecord
  belongs_to :costumer, class_name: 'User'
  belongs_to :friend, class_name: 'User'
  validates :date, presence: true
end
