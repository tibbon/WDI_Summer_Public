###Overview

The goal of this lab is to build a simple client side JavaScript todo application that makes use of DOM manipulation, user interaction through events, and testing with Jasmine.

#####Application structure

This app is made up of only two objecst: todoApp and todoItem.

todoApp combines all the methods that are useful for working with the app.  It creates and appends new tasks to the DOM and also retrieves an array of funished and unfinished tasks.

todoItem constructs the actual DOM element to represent a task.  The methods that return a 'complete' and 'delete' buttons also bind a function that handles the click events for those buttons.  The render method returns a DOM object containing the task and the two buttons.

#####File structure

Application:

- index.html - the main todo app HTML page
- src/todo.js - the todo app JavaScript source code

Jasmine Tests:

- SpecRunner.html - The Jasmine test page for running tests
- spec/todoSpec.js - Jasmine tests

Other:

- lib/jasmine-1.3.1 - Jasmine
- style.css - todo app css style sheet

###Step-by-step instructions

#####Notes:

Probably the most confusing part of this app is building the `Object.create` method.  Make sure to have a solid grasp on functions used as constructors for objects referenced in their `prototype` attribute and be comfortable with the last part of [this article](http://pivotallabs.com/javascript-constructors-prototypes-and-the-new-keyword/)

#####Step 1:

Build out the starter DOM structure in index.html:

- A container div with id 'container' for the app, containint:
  - A div with an 'unfinished' id for holding new tasks, containing:
    - An input field with the 'new-task-field' id for getting user input
    - A button with an 'add-item' id for submitting a new task
    - An orderd list with a 'todo-items' id for holding new tasks
  - A div with an 'finished' id for completed tasks, containing:
    - An unordered list with a 'completed-items' id for holding completed tasks

#####Step 2:

Build out the starting structure of the javascript app in src/todo.js:

- An empty todoApp object literal
- An empty todoItem object
- (TDD) Write a test for object duplication
- Define the Object.create() method for duplicating todoItem

#####Step 3:

Implement the basic add item functionality:

- Use the window.onload event to pick out an 'add-item' button
- Add an onclick event handler that will call a todoApp createTask method and input from the 'new-task-field' field as an argument
- Implement the todoApp createTask method to:
  - check that the new task name isn't blank
  - create a new instance of a todoItem object
  - Use the new task objects setTaskText method to set the task text from the argument
  - call the todoApp appendTask method passing the new task object as an argument
- Implement the todoApp appendTask method to:
  - call the new task render method that returns a DOM object and append it to the 'todo-items'
- Implement the necessary todoItem methods:
  - setTaskText method to set the taskName attribute
  - render method to return an 'li' element with a div for holding the task text

#####Step 4:

Implement the complete button

- (TDD) Write a test to make sure that the todoApp completedButton method returns a button
- Make a todoItem completedButton method that will return a button DOM object:
  - create the button
  - set the onclick function to do some DOM manipulation:
    - (remember to save a reference to the todoItem 'this' in the function's scope by storing it in a variable)
    - remove the task from 'todo-items' and append it to 'completed-items'

#####Step 5:

Implement the delete button

- (TDD) Write a test to make sure that the todoApp deleteButton method returns a button
- Make a todoItem deleteButton method that will return a button DOM object:
  - create the button
  - set the onclick function to do some DOM manipulation:
    - (remember to save a reference to the todoItem 'this' in the function's scope by storing it in a variable)
    - remove the task from the DOM

#####Step 6 (Optional):

You may want to refactor some code, add helper methods to clean up the repeated parts or abstract out some parts, and add styling by adding css classes.

#####Step 7 (Optional):

Add a 'created on:' and 'completed on:' section to the tasks to keep track of the date when the tasks were created and completed.