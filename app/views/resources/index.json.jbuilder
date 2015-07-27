json.array!(@resources) do |resource|
  json.extract! resource, :id, :title, :description, :section_id
  json.url resource_url(resource, format: :json)
end
