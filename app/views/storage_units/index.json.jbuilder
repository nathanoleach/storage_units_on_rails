json.array!(@storage_units) do |storage_unit|
  json.extract! storage_unit, :id, :name, :description, :length, :width, :height, :renter_id, :annual_rate, :monthly_rate
  json.url storage_unit_url(storage_unit, format: :json)
end
