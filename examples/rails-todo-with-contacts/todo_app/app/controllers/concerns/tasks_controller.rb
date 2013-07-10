class TodosController < ApplicationController

  def index
    @tasks = Todo.all
  end

end