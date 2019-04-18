class CategoryItinerary < ApplicationRecord
  belongs_to :itinerary
  belongs_to :category
end
