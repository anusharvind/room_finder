json.array!(@room_rules) do |room_rule|
  json.extract! room_rule, :id, :veg_only, :smoking_allowed, :alcohol_allowed
  json.url room_rule_url(room_rule, format: :json)
end
