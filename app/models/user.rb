class User < ApplicationRecord
  has_secure_password
  validates :email, presence: :true, uniqueness: :true

  # has_many :activities
  # has_many :wishlist_itneraries
  # belongs_to :itinerary
  # belongs_to :activity
end
