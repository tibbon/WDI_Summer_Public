Let's talk about controllers

## Coding along with:

1. Calculating a set of data (available contacts). Calling other models, chaining through associations
2. Adding non-CRUD routes and actions (add/remove contact, set high priority)
3. Basic search logic in controller and searching by name
3a. Move search logic into the index method

Controllers and their actions. In Sinatra our routes and controllers were the same thing. In Rails, as Phil covered this morning when talking about links, we separate out these two things.

When your application receives a request (get or post), the routing determines which Controller and Action to run.

So if we look in our ToDo application, and go to /contacts, it know (because of our routes.rb) to go to the Contacts controller, and call the index method.

In our Controllers, we can call any models that we need to, although its best to keep things simple and work with related models.

Let's say that we're on our ToDo's Show page, and we'd like to add people that aren't on the todo already.

One way we could do that is

Controllers
- mark as done/increment/priority
- remove user from todo

Controllers, take input and can call any model methods using the information from that input. They can process simple logic.

Now keep in mind, that when possible, you should use the CRUD tasks to do things, but sometimes it just makes more sense to have a specific action that does a non-CRUD thing.

You can chain models to get access to things.

Displays form to add a new contact to a task. Just list the additional contacts

@task = Task.find(1)
@contacts = Contact.all
@available_contacts = @contacts - @task.contacts

Filtering based on input (super limited search?). A Todo named...
/tasks/show/search/:name
if params[:name]
  @tasks = Task.find_by_name(params[:name])
else
  @tasks = Task.all
end