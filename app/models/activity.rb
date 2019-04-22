class Activity < ApplicationRecord
  belongs_to :user
  has_many :wishlist_itineraries
  belongs_to :itinerary
end
