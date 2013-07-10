class ContactsController < ApplicationController
  # Controller actions can do several things.
  # Non-inclusive list of examples below

  # Actions can call Model methods and store results as instance variables
  def index
    @contacts = Contact.all
  end

  # Actions don't always need much code
  def new
  end

  # Actions can take in parameters, create records, and redirect
  def create
    name = params[:name]
    contact = Contact.new
    contact.name = name
    contact.save
    redirect_to('/contacts')
  end

  # Actions can query for a single result and store as an instance variable
  def show
    @contact = Contact.find(params[:id])
  end

  # Sometimes, you have two actions that look very similar
  def edit
    @contact = Contact.find(params[:id])
  end

  # Actions can be used to update our records
  def update
    contact = Contact.find(params[:id])
    contact.name = params[:name]
    contact.save
    redirect_to("/contacts/#{contact.id}")
  end


  # And actions can be used to delete records
  def destroy
    contact = Contact.find(params[:id])
    contact.destroy
    redirect_to("/contacts")
  end

  #But they can do other things too!
end