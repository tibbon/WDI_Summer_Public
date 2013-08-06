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
});

//Test the new task creation methods
describe("New task creation", function() {
})