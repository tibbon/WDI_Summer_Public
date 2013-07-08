Dawgs::Application.routes.draw do
  root :to => 'welcome#index'
  # get '/dogs/search' => 'dogs#search'
  resources :dogs do
    collection do
      get 'search'
    end
    member do
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
