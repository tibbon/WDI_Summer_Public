# Basic Rails Commands

Create a new app

```bash
$ rails new your_app_name
```

Create a migration file

```bash
$ rails g migration name_your_migration_what_it_does
```

Run your migration file

```bash
$ rake db:migrate
```

Start your rails server

```bash
$ rails s
```

Interactive Rails Console

```bash
$ rails c
```

## Basic Flow

- The Browser makes a request
- The Web Server takes the request and sends it to the Rails App
- The Router reads the request and calls the appropriate Controller and Action
- The Controller retrieves data from the Model and sends it to the View
- The View generates the HTML with the Model data
- The Web Server takes the completed HTML and sends it to the browser
- The Broswer displays the response from the Web Server