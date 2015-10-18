json.array!(@renters) do |renter|
  json.extract! renter, :id, :first_name, :last_name, :company, :address, :city, :state, :zip, :phone, :fax, :email
  json.url renter_url(renter, format: :json)
end
