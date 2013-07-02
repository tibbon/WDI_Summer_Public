require 'sinatra'
# require' sinatra/reloader'

get '/' do
  erb :index
end

get '/about' do
  erb :about
end

get '/faq' do
  erb :faq
end