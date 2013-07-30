// Todo App!

// Use the create method to clone elements, like the todoItem objects
// This avoids using 'new' on a constructor function
// for reference see ch3 of Douglas Crockford's "JavaScript: The Good Parts"

if (typeof Object.create !== 'function') {
  Object.create = function(o) {
    var F = function() {};
    F.prototype = o;
    return new F();
  };
}

// It's useful to keep an object that represents our todo app
// 'separation of concerns' lets us combine all the relevant methods in one place

var todoApp = {

  // this method will retrieve for us a DOM list of todo items
  todoTasks: function() {
    return document.getElementById('todo-items');
  },
  // this method will retrieve for us a DOM list of completed items
  completedTasks: function() {
    return document.getElementById('completed-items');
    // possile place to store items
  },
  // This method is called when the user submits a new task
  // It creates the task and passes it to the appendTask() method
  createTask: function(text) {
    // first it makes a clone of the todoItem using the create() method we defined above
    if ( text !== "" ) {
      var task = Object.create(todoItem);
    // next it sets the task using newTask's setTaskText() method
      task.setTaskText(text);
    // pass the task to the appendTask() method so that it get's added to the DOM
      this.appendTask(task);
    }
  },
  // This method is used to render a new todoItem as a DOM element and append it to the page
  // The new todoItem object to be rendered is passed as an argument
  appendTask: function(task) {
    // we don't want to add blank tasks
      // newTask's render() method returns a DOM element representing a new task
      // which we append to the end of the DOM list of todo items
      this.todoTasks().appendChild(task.render());
  }
}

// todoItem is an object that we are going to clone every time the user hits the 'add-item' button
// Keeping all the relevant methods together under one roof will allow us to
// keep track of all the DOM manipulation logic for rendering new DOM objects to represent new tasks
// as well as implement 'complete' and 'delete' functionality for those tasks
var todoItem = {
  // this method is used to set the task text that will eventually be rendered out
  setTaskText: function(text) {
    this.taskName = text;
  },
  // This method builds and returns a DOM element that will represent the new task
  // it's used by the todoApp object to append this DOM element every time a user
  // clicks the 'add-item' button
  render: function() {
    // create all the necessary elements
    var newTask = document.createElement('li');
    var text = document.createElement('div');
    var actions = document.createElement('div');
    var metaData = document.createElement('span');
    // give them all the right CSS classes for styling
    text.className = "items";
    actions.className = "actions";
    metaData.className = "meta-data";

    // the next section will fill in the data and assemble the tasks's DOM element

    // add some useful meta data
    var date = new Date();
    metaData.innerHTML = "Created on: " + date.toLocaleDateString() + " ";
    actions.appendChild(metaData);

    // create the complete and delete buttons
    actions.appendChild(this.completedButton());
    actions.appendChild(this.deleteButton());

    // fill in and assemble the text object with task's text, some meta data
    // and the complete & delete buttons
    text.innerHTML = this.taskName;
    text.appendChild(actions);
    // add the text object to the task
    newTask.appendChild(text);

    // return the task DOM object
    return newTask;
  },
  // this method returns the DOM element representing the 'complete' button
  completedButton: function() {
    // create a new button
    var button = document.createElement('button');
    // set the CSS class name for styling
    button.className="complete";
    // insert the text 'completed' into the <button></button> tags to label our button
    button.innerHTML = "completed";
    // because js inner functions loose context
    // store the reference to the todoItem object in a variable 'that'
    // for reference see ch4 of Douglas Crockford's "JavaScript: The Good Parts"
    var that = this;
    // bind the click event to a function that will be called when the user clicks 'complete'
    // in this function we define all the steps that would implement the completion feature
    button.onclick = function(event) {
      // we set up a bunch of useful variables
      var button = event.target;
      // todoItem object has a getTask() method designed to find and return the task DOM element
      // for a given click event once we have the task object we want to remove it from the list
      // of todo items and store it in a temporary variable
      // removeChild() returns the DOM object we just removed
      var task = todoApp.todoTasks().removeChild(that.getTask(event));
      // here we find the meta data object and update it's contents to store the completion date
      var metaData = that.getMetaData(event);
      var date = new Date();
      metaData.innerHTML = "Completed on: " + date.toLocaleDateString() + " ";
      // once the task is complete we don't want to show the complete button
      button.parentNode.removeChild(button);
      // lastly we append the task DOM object to the list of completed items
      todoApp.completedTasks().appendChild(task);
    };
    // return the button DOM element
    return button;
  },
  // this method returns the DOM element representing the 'delete' button
  deleteButton: function() {
    // create a new button
    var button = document.createElement('button');
    // set the CSS class name for styling
    button.className = "delete";
    // insert the text 'delete' into the <button></button> tags to label our button
    button.innerHTML = "delete";
    // because js inner functions loose context
    // store the reference to the todoItem object in a variable 'that'
    // for reference see ch4 of Douglas Crockford's "JavaScript: The Good Parts"
    var that = this;
    // bind the click event to a function that will be called when the user clicks 'delete'
    // in this function we define all the steps that would implement the deletion feature
    button.onclick = function(event) {
      // todoItem object has a getTask() method designed find and return the task DOM element
      // for a given click event
      var task = that.getTask(event);
      // once the task is complete we remove it from the DOM tree
      task.parentNode.removeChild(task);
    };
    return button;
  },
  // keeping our code clean and HTML pretty means making useful methods that do all the legwork
  // in this case the DOM structure requires lots of repetitive .parentNode calls to get to the
  // task object itself by passing the click event object to the getTask() method we can return
  // the task object we might want elsewhere
  getTask: function(event) {
    return event.target.parentNode.parentNode.parentNode;
  },
  // this method finds the meta data 'span' element
  getMetaData: function(event) {
    return event.target.parentNode.getElementsByTagName("span")[0];
  }
}

// after all the setup above it's time to add an event listener to the 'add-button'
window.onload = function() {
  // these elements will be used to get the user's input
  var userInput = document.getElementById('new-task-field');
  var button = document.getElementById('add-item');
  // this function will create a new todo task using the text entered into the field
  // it responds to a mouse click and an 'enter' keypress events
  var inputEvent = function(event) {
    // keyCode of 'enter' is 13, keyCode of leftclick is 0
    console.log(event);
    if (event.keyCode === 13 || event.keyCode === 0) {
      // pass the input's value into the createTask() method
      // It will generate and append a new todo task
      todoApp.createTask(userInput.value);
      // clear the input field
      userInput.value = "";
    }
  }
  // because we want to give the user a choice of pressing 'enter' or clicking on the Add Item
  // button we add our inputEvent() function to both types of events
  button.onclick = inputEvent;
  userInput.onkeypress = inputEvent;
}