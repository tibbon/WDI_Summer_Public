require 'sinatra'
# if development is optional
require 'sinatra/reloader' if development?
# gem is for postgres
require 'pg'
# for debugging
require 'pry'
# for colors in our terminal
require 'rainbow'

# helpers do
#   def open_db
#     PG.connect(:dbname => 'address_book', :host => 'localhost')
#   end
# end

def run_sql(sql)
  db = PG.connect(:dbname => 'address_book', :host => 'localhost')
  result = db.exec(sql)
  db.close
  result
end


get '/' do
  # this prints to sinatra's server logs in terminal
  puts "This is the index".color(:red)
  erb :index
end

# shows all contacts
get '/contacts' do
  db = PG.connect(:dbname => 'address_book', :host => 'localhost')
  puts "we're connecting to the database".color(:blue)
  sql = "SELECT * FROM contacts"
  @contacts = db.exec(sql)
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
  id = params[:id]
  db = PG.connect(:dbname => 'address_book', :host => 'localhost')
  sql = "DELETE FROM contacts WHERE id = #{id}"
  db.exec(sql)
  db.close
  redirect to "/contacts"
end

get '/contacts/:id/edit' do
  id = params[:id]
  db = PG.connect(:dbname => 'address_book', :host => 'localhost')
  sql = "SELECT * FROM contacts WHERE id = #{id}"
  @contact = db.exec(sql).first
  db.close
  erb :edit
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

post '/contacts/:id' do
  id = params[:id]
  first = params[:first]
  last = params[:last]
  age = params[:age]
  db = PG.connect(:dbname => 'address_book', :host => 'localhost')
  sql = "UPDATE contacts SET (first, last, age) = ('#{first}', '#{last}',#{age}) WHERE id = #{id}"
  db.exec(sql)
  db.close
  redirect to '/contacts'
end