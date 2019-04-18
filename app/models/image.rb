class Image < ApplicationRecord
  belongs_to :itinerary
  # def itinerary
  #   Itinerary.find_by(id: itinerary_id)
  # end
end
