json.array!(@room_facilities) do |room_facility|
  json.extract! room_facility, :id, :tv, :wasing_machine, :ac, :basic_appliance, :two_wheeler_parking, :four_wheeler_parking
  json.url room_facility_url(room_facility, format: :json)
end
