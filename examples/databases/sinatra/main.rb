require 'sinatra'
# if development is optional
require 'sinatra/reloader' if development?
# gem is for postgres
require 'pg'
# for debugging
require 'pry'
# for colors in our terminal
require 'rainbow'


get '/' do
  # this prints to sinatra's server logs in terminal
  puts "This is the index".color(:red)
  erb :index
end

# shows all contacts
get '/contacts' do
  puts "we're connecting to the database".color(:blue)
  db = PG.connect(:dbname => 'address_book', :host => 'localhost')
  sql = "SELECT * FROM contacts"
  @contacts = db.exec("SELECT * FROM contacts")
  db.close
  puts "database is closed".color(:magenta)
  erb :contacts
end

post '/contacts' do
  first = params[:first]
  last = params[:last]
  age = params[:age]
  sql = "INSERT INTO CONTACTS (first, last, age) VALUES ('#{first}', '#{last}', #{age})"
  db = PG.connect(:dbname => 'address_book', :host => 'localhost')
  db.exec(sql)
  db.close
  redirect to '/contacts'
end

post '/contacts/delete' do
  "concrete shoes"
  # figure out who to off
  # write some sql to off them
  # go someplace
end

# Make a new contact
get '/contacts/new' do
  erb :form
end

# show one specific contact
get '/contacts/:id' do
  id = params[:id]
  db = PG.connect(:dbname => 'address_book', :host => 'localhost')
  sql = "SELECT * FROM contacts WHERE id = #{id}"
  @contact = db.exec(sql).first
  db.close
  erb :contact
end