class WelcomeController < ApplicationController
  def index
  end

  def about
    @name = "Phil"
  end
end