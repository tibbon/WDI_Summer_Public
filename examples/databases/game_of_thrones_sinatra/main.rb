require 'pg'
require 'pry'
require 'sinatra'
require 'sinatra/reloader' if development?

helpers do
  # This helps us run SQL commands
  def run_sql(sql)
    db = PG.connect(dbname: 'westeros', host: 'localhost')
    result = db.exec(sql)
    db.close
    result
  end
end

get '/' do
  erb :index
end

get '/houses' do
  sql = "SELECT * FROM houses"
  @houses = run_sql(sql)
  erb :houses
end

get '/houses/new' do
  erb :new_house
end

post '/houses/new' do
  name = params[:name]
  sigil = params[:sigil]
  motto = params[:motto]
  sql = "INSERT INTO houses (name, sigil, motto) VALUES ('#{name}','#{sigil}','#{motto}');"
  run_sql(sql)
  redirect to '/houses'
end

get '/people/new' do
  sql = "SELECT id, name FROM houses"
  @houses = run_sql(sql)
  erb :new_person
end

post '/people/new' do
  name = params[:name]
  weapon = params[:weapon]
  age = params[:age]
  living = params[:living]
  if living == 'on'
    living = true
  else
    living = false
  end
  image = params[:image]
  house_id = params[:house_id]
  sql = "INSERT INTO people (name, weapon, age, image, living, house_id) VALUES ('#{name}', '#{weapon}', #{age}, '#{image}', #{living}, #{house_id})"
  run_sql(sql)
  redirect to '/people'
end

get '/people' do
  sql = "SELECT * FROM people"
  @people = run_sql(sql)
  erb :people
end

get '/people/:id' do
  id = params[:id]
  sql = "SELECT * FROM people WHERE id = #{id}"
  @person = run_sql(sql).first
  erb :person
end

get '/houses/:id' do
  id = params[:id]
  sql = "SELECT * FROM houses WHERE id = #{id}"
  @house = run_sql(sql).first
  erb :house
end

get '/houses/:id/new_person' do
  @houses = run_sql("SELECT id, name FROM houses WHERE id = #{params[:id]}")
  erb :new_person
end