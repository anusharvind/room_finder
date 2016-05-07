json.array!(@users) do |user|
  json.extract! user, :id, :name, :email_id, :city, :gender
  json.url user_url(user, format: :json)
end
