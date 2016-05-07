json.array!(@rooms) do |room|
  json.extract! room, :id, :name, :area, :room_type, :total_limit_integer, :current_vacancy, :city, :gender_preference, :visibility, :total_rent, :expected_rent, :latitude, :longitude, :user_id
  json.url room_url(room, format: :json)
end
