json.array!(@departments) do |department|
  json.extract! department, :id, :name, :company_id, :parent_id
  json.url department_url(department, format: :json)
end
