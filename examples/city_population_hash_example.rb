# Hash properties [compared with Arrays]:
# INdex: Arbirary key [Arrays are only integers]
# Can Store: Anything [Just like arrays]
# Uxplicty unordered (don't depend on order!) [Arrays are Ordered]

city_populations =  {
  :san_francisco => 100_000,
  :nyc => 9_000_000,
	:boston => 600_000,
	:berlin => 3_500_000,
	:wilmington_de => 70_000,
	:washington_dc => 600_000
}

puts "##############"
puts "Print out the city populations"
puts "##############"
puts "#{:san_francisco} (Population #{city_populations[:san_francisco]})"
puts "#{:washington_dc} (Population #{city_populations[:washington_dc]})"
puts "#{:nyc} (Population #{city_populations[:nyc]})"
puts "#{:boston} (Population #{city_populations[:boston]})"

puts "##############"
puts "Print out the city populations with .each"
puts "##############"

# city_populations.each do |key, value|
#   puts key
#   puts value
# end

city_populations.each do |city, population|
  puts "#{city} (Population: #{population})"
end