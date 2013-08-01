class TasksController < ApplicationController
	# STEP 3: Create the following TasksController actions:
	# index - respond to html & json
	# create - respond to json
	# complete - respond to js
	# destroy - respond to js

	# STEP 8: Make the index action respond to json requests with json containing the array from `Task.all`

	# STEP 21: In the create action, instantiate a new `Task` object and save filling in the `name` parameter
	# STEP 22: In the create action, set up `respond_to` to a json request with json containing the saved task object

	# STEP 25: Find the task by id and set it's `completed` property to `true` in the `TasksController#complete` action
	# STEP 26: Make the `TasksController#complete` `respond_to` respond to a javascript request
end
