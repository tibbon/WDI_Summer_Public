// Underscore:
// each(list, iterator, [context])
// What arguments does iterator take?
// iterator: a function
// Each invocation of iterator is 
// called with three arguments: 
// (element, index, list). 
// map
// find 


function handleStudents(){
  var i = 0;  // scope: local variable, type: number
  var students = ['Jim', 'Bob', 'Tracy', 'Justin', 'Emily'];  // s: local, t:???
  return function(){ 
    _.reduce(students, 
      // iterator funciton
        function(memo, student) {
          console.log('student: ' + student);
          memo += ' ' + student;
          console.log('memo: ' + memo);
          return memo;
        }, 
        ''
    );
  // return function(){ 
  //   _.each(students, 
  //     // iterator funciton
  //       function(student, index, list) {
  //         console.log(index + ' ' + student);
  //         console.log(list[index]);
  //       }
  //   );
  };
}



// What type of variable is nextStudent?
// t: ???
var nextStudent = handleStudents(); 
var nextStudent1 = handleStudents();

// onload
window.onload = function(){
  // Adding an event handler to our addStudent button
  document.getElementById("addStudent").onclick = function(){
    document.getElementById('students').innerHTML += nextStudent() + '<br/>\n';
  };

    // Adding an event handler to our addStudent button
  document.getElementById("addStudent1").onclick = function(){
    document.getElementById('students').innerHTML += nextStudent1() + '<br/>\n';
  };

  document.getElementById("clearStudents").onclick = function(){
    document.getElementById('students').innerHTML = '';
  };

  document.getElementById("resetClosure").onclick = function(){
    nextStudent = handleStudents(); 
  };
};
