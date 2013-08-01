Start sinatra: `ruby app.rb`

Do an ajax call through the console:

```javascript
$.ajax({
   url: '/hi.json',
   dataType: 'json',
   type: 'GET'
})
```

Now let's store the the response JSON:

```javascript
var response = $.ajax({
   url: '/hi.json',
   dataType: 'json',
   type: 'GET'
});

var words = $.parseJSON(response.responseText);
```

and send it to another method to combine the two words:

```javascript
$.ajax({
   url: '/combine',
   dataType: 'json',
   data: words,
   type: 'POST'
}).done(function(data){alert(data.combined)});
```