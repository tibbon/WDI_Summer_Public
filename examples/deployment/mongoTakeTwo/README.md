# Creating new Mongo Rails app

#### Create a new Rails project, but skip ActiveRecord

`rails _3.2.13_ new mongoTakeTwo --skip-active-record`

#### Change directory into the application

`cd mongoTakeTwo/`

#### Open the application in Sublime

`subl .`

#### Edit your `Gemfile` to have `gem 'mongoid'` in it. Install the new gem

`bundle install`

#### Generate a Mongo config

`rails generate mongoid:config`

#### Scaffold a model. Look at the `/app/models/` afterward

`rails g scaffold Book title content:text`

#### In another tab run `mongod`. 
If you don't have Mongo installed, run `brew install mongodb` first

Run your Rails server and navigate to `http://localhost:3000/books`

`rails s`