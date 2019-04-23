json.array! @wishlist_itineraries.each do |wishlist_itinerary|
  json.id wishlist_itinerary.id
  json.user_id wishlist_itinerary.user_id
  json.itineray_id wishlist_itinerary.itineray_id
  json.status wishlist_itinerary.status
  json.activity_id wishlist_itinerary activity_id
end