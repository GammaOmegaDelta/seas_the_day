json.array! @activities.each do |activity|
  json.id activity.id
  json.country activity.country
  json.name activity.name
  json.description activity.description
  json.address activity.address
  json.image_url activity.image_url
end