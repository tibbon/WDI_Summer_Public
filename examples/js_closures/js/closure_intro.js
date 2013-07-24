function handleStudents(){
  var i = 0;  // scope: local variable, type: number
  var students = ['Jim', 'Bob', 'Tracy', 'Justin', 'Emily'];  // s: local, t:???
  return function(){  // from SO: the inner function has access to the 
    // environment it was created within 
    // even after the code that created the environment has returned.
    var student =  students[i]; // s: ???, t: string
    i+=1; 
    return student;// What type is this returning? 
  };
}

// What type of variable is nextStudent?
// t: ???
var nextStudent = handleStudents(); 

// onload
window.onload = function(){
  // Adding an event handler to our addStudent button
  document.getElementById("addStudent").onclick = function(){
    document.getElementById('students').innerHTML += nextStudent() + '<br/>\n';
  };

  document.getElementById("clearStudents").onclick = function(){
    document.getElementById('students').innerHTML = '';
  };

  document.getElementById("resetClosure").onclick = function(){
    nextStudent = handleStudents(); 
  };
};
