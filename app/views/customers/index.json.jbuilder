json.array!(@customers) do |customer|
  json.extract! customer, :id, :id, :customer_code, :name, :status, :discount, :address, :e_mail, :telephone, :birth_day, :expiry_date
  json.url customer_url(customer, format: :json)
end
