require 'sinatra'
require 'json'


get '/' do
	erb :home
end

get '/hi' do
	"Hello World!"
end

get '/hi.json' do
  content_type :json
  { word1: 'Hello', word2: 'World' }.to_json
end

post '/combine' do
	content_type :json
	result = params['word1']+" "+params['word2']+", from AJAX!"
    {combined: result}.to_json
end
