json.array!(@events) do |event|
  json.extract! event, :id, :date, :description, :name, :address1, :address2, :city, :state, :zip, :organization_id
  json.url event_url(event, format: :json)
end
