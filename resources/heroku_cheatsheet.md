# Heroku Cheatsheet

The Basics

```bash
$ heroku help
```

create app:

```bash
$ heroku create
```

deploy app:

```bash
$ git push heroku master
```

migrate the database:

```bash
$ heroku run rake db:migrate
```

open app in browser:

```bash
$ heroku open
```

basic app info:

```bash
$ heroku info
```

view heroku logs: 

```bash
$ heroku logs
```

To display a live stream of logs open a new terminal window and run:

```bash
$ heroku logs --tail
```

run rake task on heroku:

```bash
$ heroku run rake:taskname
```

Check out [Heroku's DevCenter](https://devcenter.heroku.com/) for all Heroku documentation.

## Troubleshooting

Deleting a heroku app

If you delete an app on heroku.com, the local version still exists.

To see if the local version exists:

```bash
$ git remote -v
```

To delete it:

```bash
$ git remote rm heroku
```

More info for Deploying to Heroku with Rails can be found [here](https://devcenter.heroku.com/articles/rails3#deploy-your-application-to-heroku).