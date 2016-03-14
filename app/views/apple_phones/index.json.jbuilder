json.array!(@apple_phones) do |apple_phone|
  json.extract! apple_phone, :id, :City_id, :first_name, :last_name, :email, :device_token
  json.url apple_phone_url(apple_phone, format: :json)
end
