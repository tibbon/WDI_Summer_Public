# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

100.times do |n|
	Firefighter.create(name: "Fighter#{n}", age: n + 10 )
end

9001.times do |n|
	Fire.create(location: "#{n} main street", intensity: n + 100 )
end