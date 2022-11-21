class Friend < ApplicationRecord
  validates :name, presence: true
  validates :bio, presence: true
  has_one_attached :photo
  belongs_to :user
end
