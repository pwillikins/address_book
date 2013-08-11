json.array!(@cities) do |city|
  json.extract! city, :name, :population, :elevation, :state
  json.url city_url(city, format: :json)
end
