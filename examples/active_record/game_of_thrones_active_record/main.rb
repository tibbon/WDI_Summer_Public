require 'pg'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry' if development?
require 'sinatra/activerecord'

# Database Config
set :database, {
  adapter: 'postgresql',
  database: 'westeros',
  host: 'localhost'
}

# Define Classes for ActiveRecord to interact with
class House < ActiveRecord::Base
  # Alerts activerecord to our one to many relationship
  has_many :people
end

class Person < ActiveRecord::Base
  # Alerts activerecord to our one to many relationship
  # remember this just makes active record behave as if they're related
  # but we still need to reflect this in our database tables with house_id
  belongs_to :house
end

get '/' do
  erb :index
end

get '/houses' do
  @houses = House.all
  erb :houses
end

get '/houses/new' do
  erb :new_house
end

post '/houses/new' do
  house = House.create(params)
  redirect to '/houses'
end

get '/people/new' do
  @houses = House.all
  erb :new_person
end

post '/people/new' do
  Person.create(params)
  redirect to '/people'
end

get '/people' do
  @people = Person.all
  erb :people
end

get '/people/:id' do
  id = params[:id]
  @person = Person.find(id)
  erb :person
end

get '/houses/:id' do
  id = params[:id]
  @house = House.find(id)
  erb :house
end