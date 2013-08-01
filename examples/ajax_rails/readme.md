###Overview

Create a task tracking application using Ruby on Rails for the back-end (server) to persist the tasks to the database, and JavaScript on the front-end (browser). The JavaScript should use jQuery and make AJAX requests to the server which will return JavaScript to update the page without a page reload. 

The user (*no* user login or model is needed) should be able to add a task item, see all current task items, and mark task items as completed and also delete them. 

![Rails and Javascript Ajax flow](https://raw.github.com/generalassembly-studio/WDI_Curriculum/design_lab/Week_07/4_/AjaxTodoStudent/ajax_rails.png?login=tibbon&token=960512c2c1e2eb3f0c2205bdf4ffcc74 "")

This ToDo app handles 4 events:

1. Page load
2. New task submission
3. Task completion
4. Deleting a task

These events are handled through making ajax calls to the Rails back end.  The first two, page load and new task submission, make json requests.  We'll then write a function for generating and appending the task HTML from this json resonse and send it to the client in `aplication.js`.

Since the last two events require DOM manipulation but don't return any data we make those request the javascript (.js) to do the DOM manipulation.


###Step by Step Instructions

1. Review the migrations and Task model for this application. Note the default state of the 'completed' field. 
2. Run `bundle install` and `rake db:migrate` from the bash prompt.
3. Create `TasksController` actions (index, create, complete and destroy).
4. Create the routes needed for the `TasksController` actions.
5. Review the basic DOM setup for the home page (/app/views/tasks/index.html.erb). No modification needed. 
6. Create some seed data for the tasks and seed the database.
7. Run `rake db:seed` from the bash prompt to populate the database with seed data. 
8. Make the `TasksController#index` action respond to json requests with json containing the array from `Task.all`.
9. When the DOM is ready make an ajax call to the `TasksController#index` action with a`dataType` setting set to json.
10. For now use `console.log` in the above ajax call's `.done()` to see the result is an array of javascript objects.
11. Make a function that takes a 'task' JavaScript object as an argument
12. Setup a jQuery DOM representation of the task object
13. Set the htmlTask elements `data-id` attribute to the tasks id 
14. Append htmlTask either to the `#todo-items` list or the `#completed-items` list
15. Note `.click()` event handlers to the `complete` and  `delete` buttons that will later make ajax requests to the server - but don't fill it out yet
16. Rewrite the `.done()` method in step 10 so that it loops through the elements in the ajax response object and passes each to the new append task function
17. Make a javascript object `task` that will have a `name` attribute
18. Set the name attribute to the value of the text in the `input` field 
19. Make the click event send a json object to the `TasksController#create` action using AJAX
20. Use the method `console.log` on the result in the `.done()` to see that it will return a JavaScript task object after the next steps. 
21. In `TasksController#create`, instantiate a new `Task` object, filling in the `name` parameter and save it.
22. In `TasksController#create`, set up `respond_to` to a json request with json containing the saved task object.
23. Rewrite `.done()` method from step 20 to send the response object to the append task function.
24. Make the step 15 `completeButton.click()` make an ajax call to the `TasksController#complete` action and set the `dataType` setting to `script`.
25. In the `TasksController#complete` action, find the task by id and set it's `completed` property to `true`.
26. Make the `TasksController#complete` `respond_to` respond to a javascript request.
27. Find the `complete.js.erb` file in the Task view that will hold the javascript response.
28. Use the HTML `data-id` attribute to find the task in the DOM.
29. Move the task to the `completed-items` list.
30. Make the step 15 `deleteButton.click()` make an ajax call to the `TasksController#destroy` action and set the `dataType` setting to `script`
31. In the `TasksController#destroy` action, find the task by id and delete that task from the database .
32. In the `TasksController#destroy` action, make `respond_to` respond to a javascript request .
33. Create a `destroy.js.erb` file in the `app/views/tasks` that will hold the javascript response
34. In the `destroy.js.erb` file, use the HTML `data-id` attribute to find the task in the DOM and remove it .