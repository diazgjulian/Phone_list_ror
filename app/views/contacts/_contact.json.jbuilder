json.extract! contact, :id, :first_name, :last_name, :phone_number
json.url contact_url(contact, format: :json)
