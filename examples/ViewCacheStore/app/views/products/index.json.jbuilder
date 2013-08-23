json.array!(@products) do |product|
  json.extract! product, :name, :description
  json.url product_url(product, format: :json)
end
