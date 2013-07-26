## Hangman LAB

###Goal:
* The goal of this lab is to practice organizing your JavaScript code in an object-oriented way and using the underscore.js library to manipulate arrays. It will also allow you to continue to practice working with events and manipulating the DOM.

### The Hangman Game:
* The game selects a random word from a word list and makes that the secret word
* The player guesses one letter at a time, trying to figure out what the word is
* If the player guesses correctly, any instances of that letter are revealed in the secret word
* If the player guesses incorrectly, they are penalized by taking away a guess
* If a player reveals all of the letters of the secret word, they win
* If a player makes 8 incorrect guesses before solving the secret word, they lose


### To do:
* Plan out your object model. What variables and functions will each object have? How will the different objects communicate with each other?
* Get the logic to work and make sure you have the game working in the console first before translating it over to update the DOM.
* Translate your game over so it updates the DOM.
* Once you get the game working:
	* Implement a "reset" button that will reset the game and choose a new word
	* Implement a "give up" button that will show the solution
* Are there ways to refactor your code to make it DRYer?

###Bonus:
* Validate the input so that only single letters are accepted as guesses (Hint: Look up regular expressions)
* Change the input format so that there is no text field. You can get input by "listening" to the keyup event and figuring out which key was pressed.
* Draw the hangman guy using CSS
* Implement a "hint" button that will reveal one of the letters in the word

