json.array!(@contracts) do |contract|
  json.extract! contract, :id, :start_date, :end_date, :billing_period, :billing_rate, :renter_id, :storage_unit_id, :notes
  json.url contract_url(contract, format: :json)
end
