class ActivityItinerary < ApplicationRecord
  belongs_to :user
  belongs_to :itinerary
  belongs_to :activity, optional: true
end
