class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def new
  end

  def create
    # get the info from params
    name = params[:name]
    # make a new dog object
    dog = Dog.new
    # store the info in the new dog object
    dog.name = name
    # save the dog to db
    dog.save
    # redirect to index
    redirect_to '/dogs'
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def update
    dog = Dog.find(params[:id])
    dog.name = params[:name]
    dog.save
    redirect_to "/dogs/#{dog.id}"
  end

  def destroy
    dog = Dog.find(params[:id])
    dog.destroy
    redirect_to('/dogs')
  end
end