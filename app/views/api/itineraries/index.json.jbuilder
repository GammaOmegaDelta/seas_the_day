json.array! @itineraries.each do |itinerary|
  json.id itinerary.id
  json.country itinerary.country
  json.category itinerary.category
  json.name itinerary.name
  json.description itinerary.description
  json.address itinerary.address
  json.image_url itinerary.image_url
end