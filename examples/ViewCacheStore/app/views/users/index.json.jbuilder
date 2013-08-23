json.array!(@users) do |user|
  json.extract! user, :name, :profile_image_url
  json.url user_url(user, format: :json)
end
