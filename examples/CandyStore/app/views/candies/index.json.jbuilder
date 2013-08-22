json.array!(@candies) do |candy|
  json.extract! candy, :name, :price, :flavors, :awards
  json.url candy_url(candy, format: :json)
end
