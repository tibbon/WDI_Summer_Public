# JS Templating with AJAX Lab
Two main concepts will be explored during this lesson: JavaScript templating of data objects, and infinite scroll.

## Handlebars.js

[Handlebars.js](http://handlebarsjs.com/) is a JavaScript library that is used for *templating*. This allows for easier insertion and updating of HTML from data objects using JavaScript. 

Conceptually, we can think about Handlebars a bit in the same way we think about ERB. In ERB, we wrap Ruby code in angle brackets: `<% expression %>`. In Handlebars, we wrap the JavaScript code in double curly braces: `{{expression}}` 
Aside from that, there are some fundamental differences between ERB and Handlebars - most immediately, where we put the HTML that uses Handlebars. 

To use Handlebars in our code, we need to include it in a `<script>` tag with a link to handlebars.js on our server or another CDN:

```html
	<html>
	<head>
	  <script src="handlebars.js" language="javascript"></script>
	</head>
	<body>
	</body>
	</html>
```

If we're using Rails, we can include Handlebars in our asset pipeline in `/app/assets/javascripts/application.js`, but we'll come back to that later. 

Handlebars doesn't require other JavaScript libraries, but it is compatible with [jQuery](http://jquery.com/), [Underscore](http://underscorejs.org/) and [Backbone](http://backbonejs.org/). In some of the following examples, we'll use jQuery, so include a link to that in the `<head>` of your HTML as well: `<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>`.

####Syntax

*Expressions* in Handlebars can be simple object properties, conditions, loops, etc. We'll put these inside of double curly braces (`{{expression}}`) inside HTML. One such example might be a simple JSON object, which we want to get onto our following `1_example_object.html` page:

```javascript
  // Example JSON Object, used below in HTML
	var post = {
		title: "My first Handlebar Template",
		date: "Yesterday",
		body: "Lorem ipsum"
	}
```

```html
	<!-- 1_example_object.html -->
	<html>
	<head>
	  <title>Handlebars Templating Introduction</title>
	  <script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
	  <script src="handlebars.js" language="javascript"></script>
	</head>
	<body>
		<script>
	    var post = {
	        title: "My first Handlebar Template",
	        date: "Yesterday",
	        body: "Lorem ipsum"
	    }
	  </script>
	</body>
	</html>
```

We can see the `post` object in our Chrome JavaScript console, but we'd like to have a template that populates the body of our HTML. Note that we've put the `<script>` containing the `post` object at the bottom of the body. This is so all the elements on the page are present when this code runs. Later, we'll look at how we could put it elsewhere.

*Templates* give us reusable code that will help us populate HTML from JavaScript data objects without a lot of messy DOM manipulation. You could think about these a bit like *partials* in Rails, but again, there are some important differences- primarily how they are rendered into the page. 

Although the templates look mostly like HTML, they'll reside inside of `<script>` tags in the head. Also, these are special `<script>` tags which will have an `id` and a `type`. The `id` names the template (much as we'd name our partial in Rails). The naming used in the id is important. The `type` will always be `type="text/x-handlebars-template"`, which identifies it as a Handlebars template. 

A template script tag that will help us insert the above JSON object would look like the following and appear in the `<head>` of your HTML:

```html
<script id="post-template" type="text/x-handlebars-template">
  <div>
      <h1>{{title}}</h1>
      <h4>{{date}}</h4>
      <p>{{body}}</p>
  </div>
</script>
```

You can also create a template all in a single line, but this is hard to read and poor form. 

```js
	// Don't do this
	var postTemplate = '<div><h1>{{title}}</h1><h4>{{date}}</h4><p>{{body}}</p></div>';
```

Our desired result is to render the following HTML into the body, but we still aren't quite there yet. To do that we need compile the template. 

```html	
	<div>
		<h1>My first Handlebar Template</h1>
		<h4>Yesterday</h4>
		<p>Lorem ipsum</p>
	</div>
```

**Compiling** the template into HTML is a single command that expects a string parameter of the raw template code:
```js
	var template = Handlebars.compile(source);
```
If your templates are JS variables, just pass the variable into the function as the parameter, *but again, storing them as JS variables is pretty messy and frowned upon*. 

If you are storing your templates as `<script>` blocks, the template can be generated as follows:
```js
	// Use jQuery to select the HTML from the #post-template script
	var source = $("#post-template").html();

	// Compile the template using Handlebars
	var template = Handlebars.compile(source);
```

The template then can take a JavaScript object as a parameter to generate your templated HTML.
jQuery or DOM manipulation can be used to append this to the body or elsewhere.
```js
	// template takes post as a parameter to generate the HTML
	var templatedHTML = template(post);
	// append the result to the body of your page using jQuery
	$('body').append(templatedHTML)
```

All of this is combined in the pasteable example below:
```html
<!-- 2_example_handlebars.html -->
<html>
<head>
  <title>Handlebars Templating Introduction</title>
  <script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
  <script src="handlebars.js" language="javascript"></script>

  <script id="post-template" type="text/x-handlebars-template">
    <div>
        <h1>{{title}}</h1>
        <h4>{{date}}</h4>
        <p>{{body}}</p>
    </div>
	</script>
</head>
<body>
	<script>
    var post = {
        title: "My first Handlebar Template",
        date: "Yesterday",
        body: "Lorem ipsum"
    }
    var source = $("#post-template").html();
    var template = Handlebars.compile(source);
    $('body').append(template(post));
  </script>
</body>
</html>
```

## Loading data via AJAX

Rarely will we manually populate a JavaScript object for use with Handlebars, instead returning results from our application server via JSON.

AJAX calls can return HTML for easy injection into a web page.  Sometimes we need to lessen the server load and distribute the processing power to the user's browser (hence the point of JS templating and AJAX).  With Rails returning JSON objects, these two technologies fit easily hand-in-hand.

In the /json_responder folder you'll find a basic Rails application which will return JSON from `http://localhost:3000/posts/1.json`.

```bash
	cd json_responder
	bundle install
	rake db:migrate
	rake db:seed
	rails s
```

Note that to respond to local requests, you may have to alter your `application_controller.rb` to be the following, which has been done in this example app:

```ruby
	# app/controllers/application_controller.rb
	class ApplicationController < ActionController::Base
		protect_from_forgery
		after_filter :set_access_control_headers

		def set_access_control_headers
		  headers['Access-Control-Allow-Origin'] = '*'
		  headers['Access-Control-Request-Method'] = '*'
		end
	end
```

Now, using what we've learned from handlebars thus far, an AJAX call in jQuery can be as follows:
```js
	$.ajax({
		type: 'GET',
		url: 'http://localhost:3000/posts/1.json',
		dataType: 'json'
	}).done(function(data) {
		var source = $("#post-template").html();
		var template = Handlebars.compile(source);
		$('body').html(template(data));
	}).fail(function(request, status, error) {
		//Error handling
		console.log(error);
	});
```

We can put this in our `<script>` tag: 

```html
<!-- 3_example_live_ajax_request.html -->
<html>
<head>
  <title>Handlebars Templating Introduction</title>
  <script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
  <script src="handlebars.js" language="javascript"></script>

  <script id="post-template" type="text/x-handlebars-template">
    <div>
        <h1>{{title}}</h1>
        <h4>{{date}}</h4>
        <p>{{body}}</p>
    </div>
	</script>
</head>
<body>
	<script>
		$.ajax({
			type: 'GET',
			url: 'http://localhost:3000/posts/1.json',
			dataType: 'json'
		}).done(function(data) {
			var source = $("#post-template").html();
			var template = Handlebars.compile(source);
			$('body').html(template(data));
		}).fail(function(request, status, error) {
			//Error handling
			console.log(error);
		});
  </script>
</body>
</html>
```


### Conditionals and Loops
Denoting an if statement begins with a # symbol, and we must close it.  If the argument returns false, undefined, null, "" or [], the block will not be rendered.

```js
	// Data is actually returning from our AJAX request, but just so we can visualize the data
	post.author = {
		first_name: "JK",
		last_name: "Rowling"
	}
```
```html
  <script id="post-template" type="text/x-handlebars-template">
    <div>
        <h1>{{title}}</h1>
        <h4>{{created_at}}</h4>
        <p>{{body}}</p>
    {{#if author}}
			<h2>By {{author.first_name}} {{author.last_name}}</h2>
		{{else}}
			<h2>Unknown Author</h2>
		{{/if}}
    </div>
	</script>
```	

If we have an array of comments in our post object, looping through an object is easy as well, and the {{each}} can be used if the loop is empty:
```js
	// Data is actually returning from our AJAX request, but just so we can visualize the data
	post.comments = [
		"body":"I love this post",
		"body":"Fantastic insight, gonna tweet about it!"
	]
```
```html
	{{#each comments}}
		<p>{{body}}</p>
	{{else}}
		<p>No Comments</p>
	{{/each}}
```

####Helpers
Helpers provide additional mixin functionality that can be used throughout your templates.  Consider them ways to make your code more DRY as well as adding raw JS into your templating.  To start, register your helper:
```js
	Handlebars.registerHelper('fullname', function(first_name, last_name) {
		return first_name + " " + last_name;
	})
```
and add it to your template as
```html
	{{fullname author.first_name author.last_name}}
```

This replaces the code `{{first_name}} {{last_name}}` in your template, and feel free to add logic to this JS function.  Whatever is returned from these functions will be injected into your templates.


####Escaping
If you don't want handlebars to escape the content, use triple curly braces `{{{expression}}}`.  Perhaps in our post template example above, we should use these triple braces to make sure our markup is displayed properly.  Throw some HTML into your body text and see how it renders.
```js
	var post = {
		title: "Post title",
		date: "Yesterday",
		body: "Lorem ipsum body <strong>blah blah</strong>"
	}
```

------
##Infinite Scrolling

A commonly-seen concept nowadays is the concept of loading more content as the user scrolls through a page.  This can cut down on initial render time and keep the front-end light weight.  If we have 1000 possible documents, we don't want to waste server resources populating that entire file, especially if a bulk of users won't be interested in more than just a few.  Also, it may not be ideal to have the user click to new pages with traditional paging.

Setting up an "endless" page involves attaching a handler to the `onscroll` event and measuring the window to see if we're at the bottom.  Traditional code is as follows:
```js
	$(window).scroll(function() {
		// Cache our jQuery selector for window
		var win = $(window);
		
		// Infinite scroll math!
		if(win.height() + win.scrollTop() >= $(document).height()) {
			populateCountries();
		}
	});
```
If the scrolled container is anything other than the whole window, replace $(window) and $(document) as necessary.

Familiarity with the browser window parameters and the size of elements is important here.  The math breaks down as follows:
* `win.height()` gives us the inner rectangle of our browser's window size (the dimensions of the user's browser without borders, menubars, etc.)
* `win.scrollTop()` returns the scroll position of the browser from the top
* `$(document).height()` gives us the height of the entire rendered document (including whatever is not in view)

For example, a browser can be 700px tall, but the rendered document may be long and stretching around 2000px.  The very top of the page is scrollTop 0, and as we scroll down, that number increases to the pixel position we are in the document.  At the very bottom of the page, the height and y-scroll position of the window should equal the document height.  For the lab, this code has already been implemented as shown above, but understanding and being able to code it is important.


------
## Codealong
### templating-code-example
This is intended to be a demonstration file to build during class.  It is a single html page with all JS scripts included.  This is an exercise using Handlebars.js templates with a simple dataset of countries (name, abbreviation, and if they're in North America).  There is a CSS library for the flags, and it uses CSS classes with the country's abbreviation to populate.  Data is intended to populate using either the "All Data" button or stepping through the data in groups (group size denoted by input value) using either the "Populate" button or scrolling the window.  **Please review and use template.html**

Components:

* A simple JS object with an array of object data
* An HTML Handlebars template and a JS function Handlebars template (both are identical and are intended to demonstrate that a template is technically just a string of text)
* An "all" Handlebars template that uses the HTML template as a partial
* Infinite scrolling functionality
* Event bindings (and un-bindings to avoid duplicate data, as an example)


======
# Instructor Notes
The goal of the flag lab is to implement a basic Handlebars.js template.  What the students will have to start with is a basic rails app that shows a list of countries containing the country's name, abbreviation, and flag.

What is important to remember during this lesson is that the students are being prepared for the upcoming JS MVC framework topics (Backbone, etc.).  This should serve as an exploration into the foundational concepts of what a JS MVC is built on by demonstrating AJAX'd data into front-end JS templates.  Keep in mind that a JS MVC framework is more of a nice-to-have than a necessity.

Be sure to revisit how AJAX works with the perspective of successes, failures, and overlapping calls (i.e. scrolling really fast can double the data by making more than one call with the same parameters).


======
## A Note on Handlebars Precomilation **OPTIONAL
Precompiling your handlebars templates is a great way to reduce some of the browser's overhead, especially for larger templates.  The more logic you add to your templates, the heavier they become.  Precompiling is done through the command line using Node.js and the Handlebars package.

To install with OSX (assuming node and npm are installed)
```bash
	npm install handlebars -g
```
And the compile syntax becomes
```bash
	handlebars [input] -f [output]
```
You can also specify some of the built-in helpers when compiling to optimize the template (denoted by -k):
```bash
	handlebars [input] -f [output] -k if -k each
```
***If node and/or npm is not installed***, to get the job done on OSX:
```bash
	brew install node
	curl https://npmjs.org/install.sh | sh
```
