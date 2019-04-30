class Itinerary < ApplicationRecord
  belongs_to :user
  has_many :activity_itineraries
end