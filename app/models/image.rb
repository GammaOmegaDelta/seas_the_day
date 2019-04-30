class Image < ApplicationRecord
  belongs_to :activity
  # def itinerary
  #   Itinerary.find_by(id: itinerary_id)
  # end
end
