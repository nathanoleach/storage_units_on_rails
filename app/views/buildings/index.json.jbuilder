json.array!(@buildings) do |building|
  json.extract! building, :id, :name, :description, :street, :city, :state, :zip, :phone, :email
  json.url building_url(building, format: :json)
end
