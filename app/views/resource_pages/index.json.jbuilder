json.array!(@resource_pages) do |resource_page|
  json.extract! resource_page, :id, :title, :description
  json.url resource_page_url(resource_page, format: :json)
end
