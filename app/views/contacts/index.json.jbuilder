json.array!(@contacts) do |contact|
  json.extract! contact, :id, :name, :company_id, :department_id
  json.url contact_url(contact, format: :json)
end
