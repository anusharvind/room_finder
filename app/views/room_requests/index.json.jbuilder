json.array!(@room_requests) do |room_request|
  json.extract! room_request, :id, :status, :no_of_peoples, :moved, :user_id, :room_id
  json.url room_request_url(room_request, format: :json)
end
