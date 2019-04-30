json.array! @activity_users.each do |activity_user|
  json.id activity_user.id
  json.user_id activity_user.user_id
  json.status activity_user.status
  json.activity_id activity_user.activity_id
end