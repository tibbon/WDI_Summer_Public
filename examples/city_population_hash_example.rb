# Hash properties [compared with Arrays]: 
# INdex: Arbirary key [Arrays are only integers]
# Can Store: Anything [Just like arrays]
# Uxplicty unordered (don't depend on order!) [Arrays are Ordered]

city_populations =  {:san_francisco=>100000, :nyc=>9000000,
	 :boston=>600000, 
	:berlin=>3500000, 
	:wilmington_de=>70000, 
	:washington_dc=>600000}

# Returns a string with the city symbol the population in parenthesis.
# Accepts two arguments: 
# city_symbol, a symbol for the city that we want to look up, 
# city_population_potato, a hash that contains the population data
#                          ========> Note, city_population_potato has a goofy name
#                                    Don't forget the name doesn't matter, it's just for us to remember!
def annotate_population(city_symbol, city_population_potato)
  # Use the key, city_symbol, to get the associated value in the city_population_hash
  # Note again, there's nothing magic about the name of city_population_potato. It's just the second argument to our function!
  population_value  = city_population_potato[city_symbol]
  # This is another, fancier way to output the the text we want
  #return "#{city_symbol} (Population #{population_value})"
  # Return the annotated text  that we want
  return city_symbol.to_s + " (Population " + population_value.to_s + ")"
end

puts "##############"
puts "A simple lookup, outside of any functions"
puts "##############"
# "DC" has no special significance here. It's just part of the string
puts "The population of DC: " + city_populations[:washington_dc].to_s # => 600000

# Now, we want to get the annotated lookup
# First, let's look at how we would do this WITHOUT a function: 
puts "##############"
puts "Make this pretty without funcitons"
puts "##############"
puts :san_francisco.to_s + " (Population " + city_populations[:san_francisco].to_s + ")"
puts :washington_dc.to_s + " (Population " + city_populations[:washington_dc].to_s + ")"
puts :nyc.to_s + " (Population " + city_populations[:nyc].to_s + ")"
puts :boston.to_s + " (Population " + city_populations[:boston].to_s + ")"

# The output is the same, but its so much more typing! 
# We did this using functions because it helped us reduce our code
# Thanks and great work today, Chris!
puts "##############"
puts "Make this pretty with functions"
puts "##############"
puts annotate_population(:san_francisco, city_populations)
puts annotate_population(:washington_dc, city_populations)
puts annotate_population(:nyc, city_populations)
puts annotate_population(:boston, city_populations)

# XXX This wont work. Why? 
# puts annotate_population(city_populations, :boston)
