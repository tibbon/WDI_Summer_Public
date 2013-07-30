$(document).ready(function(){

  //This creates a user object (using Literal Notation)
  var user = {};

  //Store the appropriate items you will be selecting from the DOM into variables for easy usage
  var userNameInput;
  var userAgeInput;
  var userPhoneInput;
  var userEmailInput;
  var userNameError;
  var userAgeError;
  var userPhoneError;
  var userEmailError;
  var addUserDataForm;
  var displayData;

  // Initially hide the errors.
  // Check the HTML to see how to select all the items that are error messages.

  // display() blanks out what is currently being displayed in the display-data area
  // then displays the submitted user data as a list
  function display() {
  }

  // Intercept add-user-data form submit event
  addUserDataForm.submit(function(){

      //Get values from user inputs
      var userNameVal;
      var userAgeVal;
      var userPhoneVal;
      var userEmailVal;

      // Validate the Name
      function validateName() {
      // It should return true if the name is greater than or equal 3 characters.
      // If not, it should show the error and return false.
      }

      // Validate the Age
      function validateAge() {
      // It should return true if the age is a number.
      // If not, it should show the error and return false.
      }

      // Validate the Phone Number.
      function validatePhone() {
        //This is a regular expression for a phone
        var p = /^[0-9]+[0-9]+[0-9]+[_.-]+[0-9]+[0-9]+[0-9]+[_.-]+[0-9]+[0-9]+[0-9]+[0-9]$/;
        if (p.test(userPhoneVal)) {
        // It should return true if the phone number matches the regular expression.
        } else {
        // If not, it should show the error and return false.
        }
      }

      // Validate the Email.
      function validateEmail() {
        //This is a regular expression for email
        var e = /^[-a-z0-9~!$%^&*_=+}{\'?]+(\.[-a-z0-9~!$%^&*_=+}{\'?]+)*@([a-z0-9_][-a-z0-9_]*(\.[-a-z0-9_]+)*\.(aero|arpa|biz|com|coop|edu|gov|info|int|mil|museum|name|net|org|pro|travel|mobi|[a-z][a-z])|([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}))(:[0-9]{1,5})?$/;
        if (e.test(userEmailVal)) {
        // It should return true if the email matches the regular expression.
        } else {
        // If not, it should show the error and return false.
        }
      }

      // If all of the items validate, you should update the name, age, phone and email of the user and display it
      if (validateName() && validateAge() && validatePhone() && validateEmail()) {
      }

      return false; //This stops the form from processing (page reload)
    });

  //Clear the object
  // Write a function so that when the clear button is clicked, any data being displayed is erased.

});