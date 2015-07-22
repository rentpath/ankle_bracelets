json.array!(@organizations) do |organization|
  json.extract! organization, :id, :name, :address1, :address2, :city, :state, :zip, :phone_number
  json.url organization_url(organization, format: :json)
end
