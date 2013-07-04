# Sunlight App
require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry' if development?
require 'sunlight'
require 'sinatra/activerecord'

# register here: http://sunlightfoundation.com/api/
# be sure to verify and activate your account
Sunlight::Base.api_key = 'your_sunlight_api_key'

# Configure the database
set :database, {
  adapter: 'postgresql',
  database: 'your_database_name',
  host: 'localhost'
}
# Be sure to run rake db:migrate to add your tables
# It will create the following table:

# == Schema Info
# Table name: politicians
#
# firstname       :string
# firstname       :string
# lastname        :string
# party           :string
# phone           :string
# state           :string
# twitter_id      :string
# in_office       :boolean
# votesmart_id    :string
# bioguide_id     :string

# Configure ActiveRecord to interact with a politicians table
class Politician < ActiveRecord::Base
end

get '/' do
  # display an input to search by zipcode
  # list all politicians saved to the database
  erb :index
end

get '/search' do
  # Search the Sunlight API by zipcode
  # Display all available politicians
  erb :search
end

post '/favs/new' do
  # Search the Sunlight API for a particular politician
  # save that politician to the database
  redirect to '/'
end