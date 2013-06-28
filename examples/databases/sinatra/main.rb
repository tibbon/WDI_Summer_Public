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
  erb :index
end

# shows all contacts
get '/contacts' do
  db = PG.connect(:dbname => 'address_book', :host => 'localhost')
  sql = "SELECT * FROM contacts"
  @contacts = db.exec(sql)
  db.close
  erb :contacts
end

# show one specific contact
get '/contacts/:name' do
  @user_name = params[:name]
  db = PG.connect(:dbname => 'address_book', :host => 'localhost')
  sql = "SELECT * FROM contacts WHERE first = '#{@user_name}'"
  @contact = db.exec(sql).first
  db.close
  erb :contact
end