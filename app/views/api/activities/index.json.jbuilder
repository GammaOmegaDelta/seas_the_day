json.array! @activities.each do |activity|
  json.id activity.id
  json.user_id activity.user_id
  json.itinerary_id activity.itinerary_id
end