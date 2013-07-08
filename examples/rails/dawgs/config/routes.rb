Dawgs::Application.routes.draw do
  root :to => 'welcome#index'
  # same as get '/' => 'welcome#index'
  # goes to http://localhost:3000/

  # resources automatically generates our 7 routes
  # see below for individual routes
  resources :dogs do
    # collection acts on the whole resource
    collection do
      # same as get '/dogs/search' => 'dogs#search'
      get 'search'
    end
    # member is for an individual
    member do
      # same as get '/dogs/:id/vaccinations'
      get 'vaccinations'
    end
  end
  # get '/dogs' => 'dogs#index'
  # get '/dogs/new' => 'dogs#new'
  # post '/dogs' => 'dogs#create'
  # get '/dogs/:id' => 'dogs#show'
  # get '/dogs/:id/edit' => 'dogs#edit'
  # put '/dogs/:id' => 'dogs#update'
  # delete '/dogs/:id' => 'dogs#destroy'
end
