require 'pry'
require 'pry-debugger'

puts "Enter in your first name: "
first = gets.chomp
puts "Enter in your last name: "
last = gets.chomp
binding.pry
last = last.upcase
puts "Your full name is #{first} #{last}"