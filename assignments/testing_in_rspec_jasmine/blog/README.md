# Testing Rails

The goal here is to write code that makes all the tests pass. 

To run rspec tests you will need to do the following: 

* `bundle install` from the bash prompt when you first check out this project. You will also need to run this whenever you alter the Gemfile, which you shouldn't need to do. 
* `rake db:test:prepare` from the bash prompt to run the migrations on the test database. 
* `bundle exec guard` to auto-run rspec tests.