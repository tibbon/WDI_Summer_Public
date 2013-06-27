require 'pg'
require 'pry'

puts "Hey gurl"

# get all the inputs
# put them in the string
# make it work

# this establishes a connection to the database
# db = PG.connect(:dbname => 'address_book',
#   :host => 'localhost')
# executing sql code
# passing a string of sql to the database

# insert into database
db = PG.connect(:dbname => 'address_book',
  :host => 'localhost')

sql = "insert into contacts (first, last, age, gender, dtgd, phone) values (, 'israeli', 26, 'm', true, '310-923-2319')"

db.exec(sql)
db.close

# reads from database
# sql = "select first, age from contacts"
# db.exec(sql) do |result|
#   result.each do |row|
#     binding.pry
#   end
# end
# db.close