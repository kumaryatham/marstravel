json.array!(@travellers) do |traveller|
  json.extract! traveller, :id, :name, :email
  json.url traveller_url(traveller, format: :json)
end
