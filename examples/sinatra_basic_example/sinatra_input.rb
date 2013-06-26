# Same as terminal input but with Sinatra!

require 'sinatra'
require 'sinatra/reloader'

get '/' do

  @options = [
    "About us",
    "shop",
    "profile"
  ]

  @shoes = [
    "sandals",
    "boots",
    "faces"
  ]

  erb :options
end

get '/choice/:number' do
  choice = params[:number].to_i
  options = [
    "About us",
    "shop",
    "profile"
  ]
  @choice = options[choice]
  erb :choices
end

get '/sandals' do
  @likes_feet = false
  erb :foot_wear
end