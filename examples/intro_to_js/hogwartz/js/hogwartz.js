// create a new program
// prompt the user and ask if they want to add a student
// ask for the student's name, age and house
// create a student object for each.
// add each student to an array
// when you're done print out each student's name, age and house in a sentence

var choice = prompt("Do you want to add a student? y/n");
var students = [];

while (choice != 'n') {
  var name = prompt("Give me a name");
  var age = prompt("Give me a age");
  var house = prompt("Give me a house");
  var student = {
    name: name,
    age: age,
    house: house,
    info: function(){
      console.log(this.name + " is " + this.age + " years old. in house " + this.house);
    }
  };
  students.push(student);
  choice = prompt("Do you want to add another student? y/n");
}
// loops through an array
for(var i = 0; i < students.length; i++){
  // loops through an object
  // for(info in students[i]){
  //   console.log(students[i][info]);
  // }
  var student = students[i];
  // console.log(student.name + " is " + student.age + " in house " + student.house)
  // console.log(students[i].name, students[i].age, students[i].house)
  student.info();
}