require 'pry'
# We're stuck in loops!
# Run this program in your terminal.
# At each binding.pry you'll be kicked into pry.
# Change the value of the arrays to break out of the loop.
# type 'exit' to resume program execution.

# 1

heart = []

while heart.empty?
  puts "i'll be all alone forever"
  binding.pry
end

puts "There is hope for me!"

# 2

lion = ["cowardice", "fleas"]

while lion.include? "cowardice"
  puts "what do they got that i ain't got?!"
  binding.pry
end

puts "Why, I'd thrash him from top to bottomus!"

# 3

head = ["niarb", "fluff"]

until head.include? "brain"
  puts "oh i wish i could be of help"
  binding.pry
end

puts "The sum of the squares of the legs of a right triangle is equal to the square of the hypotenuse"

puts "Great job!"