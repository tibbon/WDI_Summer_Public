# Basic Input via terminal

options = [
  "About us",
  "shop",
  "profile"
]

puts "Please select an option"

options.each_with_index do |option, i|
  puts "Press #{i} for #{option}"
end

choice = gets.chomp.to_i


puts "You selected #{options[choice]}"
