//Test the Object.create method
describe("Object", function() {
  it("should have a create method to duplicate objects", function() {
    var o = {name: "rockin bob"};
    var o2 = Object.create(o);
    expect(o2.name).toBe("rockin bob");
  });
});

//Test the guitar's methods
describe("guitar", function() {
  var test_guitar = Object.create(guitar);

  it("should start with a default name from its prototype", function() {
    expect(test_guitar.name).toBe("Fender Esquire");
  });

  it("should take a new name when assigned", function() {
    test_guitar.setName("Fender Jazzmaster");
    expect(test_guitar.name).toBe("Fender Jazzmaster");
  });

  it("should start with six strings", function() {
    expect(test_guitar.numberOfStrings).toBe(6);
  });

  it("should have one fewer string when one is broken", function() {
    test_guitar.breakString();
    expect(test_guitar.numberOfStrings).toBe(5);
  });

  it("should be hard to rock with no strings", function() {
    test_guitar.breakString();
    test_guitar.breakString();
    test_guitar.breakString();
    test_guitar.breakString();
    test_guitar.breakString();
    test_guitar.breakString();
    test_guitar.playRock();
    expect(test_guitar.volume).toBe(0);
  });

  it("should have six strings and some volume when restrung", function() {
    test_guitar.restring();
    expect(test_guitar.numberOfStrings).toBe(6);
    expect(test_guitar.volume).toBe(5);
  });

  it("should go to 11", function() {
    expect(test_guitar.volume).toBe(5);
    test_guitar.playRock();
    expect(test_guitar.volume).toBe(11);
  });

  it("should return basic rhythm when played", function() {
    expect(test_guitar.playBasicRhythm()).toBe("jug jigga jug jigga jug");
  });

  it("should totally rock when played on the high strings", function(){
    expect(test_guitar.playHighStrings()).toBe("meedley meedley meedley meedley meedley meedley meedley meedley meedley meedley meedley meedley MEEEEEEEEEEEEEEEE. \'And the dragon comes in the NIIIiiiiIIIiiiiIIIIIIIIiiiiiiiiiiiIIIIIIIIiiiIIGGHH\'");
  })
});