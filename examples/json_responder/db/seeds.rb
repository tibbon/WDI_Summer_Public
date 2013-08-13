# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

a = Author.create(first_name: "Stephen", last_name: "King")
a.posts << Post.create(title: "The Stand", body: "The Stand is a post-apocalyptic horror/fantasy novel by American author Stephen King.")
a.posts << Post.create(title: "It", body: "It is a 1986 horror novel by American author Stephen King. The story follows the exploits of seven children as they are terrorized by an eponymous being")
Post.first.comments << Comment.new(body: "This was the scariest book I ever read.")
Post.first.comments << Comment.new(body: "I couldn\'t sleep for weeks.")
Post.last.comments << Comment.new(body: "This book was the end of my childhood.")