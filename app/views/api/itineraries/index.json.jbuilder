json.array! @itineraries.each do |itinerary|
  json.id itinerary.id
  json.user_id itinerary.user_id
  json.activity_id itinerary.activity_id
end