//Test the Object.create method
describe("Object", function() {

  it("should have a create method to duplicate objects", function() {
    var o = {name: "bob"};
    var o2 = Object.create(o);
    expect(o2.name).toBe("bob");
  });
});

//Test the todoItem's methods
describe("todoItem", function() {
  var task = Object.create(todoItem);
  task.setTaskText("Buy Food");

  it("should be set task_name to user's input", function() {
    expect(task.taskName).toBe("Buy Food");
  });

  it("should have a method completeButton that returns a button", function() {
    expect(todoItem.completedButton().nodeName).toBe("BUTTON");
  });

  it("should have a method deleteButton method that returns a button", function() {
    expect(todoItem.completedButton().nodeName).toBe("BUTTON");
  });

  it("should have a method render that returns a list element", function() {
    expect(todoItem.render().nodeName).toBe("LI")
  });
});

//Test the new task creation methods
describe("New task creation", function() {
    //This will let us keep track of method calls to create_task and append_task
    beforeEach(function() {
      spyOn(todoApp, 'createTask').andCallThrough();
      spyOn(todoApp, 'appendTask').andCallThrough();
    });

  it("should have an input field", function() {
    var userInput = document.getElementById("new-task-field");
    expect(userInput.nodeName).toBe("INPUT");
  });

  it("should have an 'add item' button", function() {
    var button = document.getElementById("add-item");
    expect(button.nodeName).toBe("BUTTON");
  });

  it("should call todoApp create_task method when the 'add item' button is clicked", function() {
    document.getElementById('add-item').click();
    expect(todoApp.createTask).toHaveBeenCalled();
  });

  it("should call todoApp append_task method after create_task", function() {
    document.getElementById('add-item').click();
    expect(todoApp.appendTask).toHaveBeenCalled();
  });

  it("should have a new task appended to the DOM when the input field isn't blank", function() {
    var todoItems = todoApp.todoTasks().childNodes.length;
    var userInput = document.getElementById("new-task-field");
    userInput.value = "Buy Food";
    var button = document.getElementById("add-item");
    button.click();
    expect(todoApp.todoTasks().childNodes.length).toBe(todoItems + 1);
  });
})