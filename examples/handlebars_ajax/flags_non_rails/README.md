This is intended to be a demonstration file to build during class.  It is a single html page with all JS scripts included.  This is an exercise using Handlebars.js templates with a simple dataset of countries (name, abbreviation, and if they're in North America).  There is a CSS library for the flags, and it uses CSS classes with the country's abbreviation to populate.  Data is intended to populate using either the "All Data" button or stepping through the data in groups (group size denoted by input value) using either the "Populate" button or scrolling the window.  **Please review and use template.html**

Components:

* A simple JS object with an array of object data
* An HTML Handlebars template and a JS function Handlebars template (both are identical and are intended to demonstrate that a template is technically just a string of text)
* An "all" Handlebars template that uses the HTML template as a partial
* Infinite scrolling functionality
* Event bindings (and un-bindings to avoid duplicate data, as an example)
