# This file establishes a connection to postgres and
# takes user input from the terminal and let's us read and
# write to the database

# use this code to create an address book in sinatra
# create an input form
# add a person
# list people
require 'pg'
require 'pry'

# remember puts prints to the terminal
# sort of like the equivalent of instance varialbes in html
puts "Hey gurl"

# get all the inputs
# put them in a string with string interpolation
puts "what's your first name?"
first = gets.chomp
puts "what's your last name?"
last = gets.chomp
puts "how old are you?"
age = gets.chomp.to_i
puts "what's your gender? m/f/o?"
gender = gets.chomp
puts "are you down to get down? true/false"
dtgd = gets.chomp
puts "cool what's your number?"
phone = gets.chomp

# establishes a connection to the database
db = PG.connect(:dbname => 'address_book', :host => 'localhost')

# stores some sql code in a variable
sql = "insert into contacts (first, last, age, gender, dtgd, phone)"\
      "values ('#{first}', '#{last}', #{age}, '#{gender}', #{dtgd}, '#{phone}')"

# execute the sql code
db.exec(sql)

# Sql code to show the contacts
sql = "select first, age from contacts"

# Execute the sql code
# Iterate through the result
# Display each row of results
db.exec(sql) do |rows|
  rows.each do |row|
    puts row
  end
end
# always close the connection
db.close