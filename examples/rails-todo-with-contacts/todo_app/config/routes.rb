TodoApp::Application.routes.draw do
  root :to => 'welcome#index'
  resources :todos
  resources :contacts
  get '/corporate_about' => 'welcome#about', as: 'aboot'
  # get '/todos' => 'todos#index', as: 'dogs'
  # post '/todos' => 'todos#create'
  # get '/todos/new' => 'todos#new'
  # get '/todos/:id' => 'todos#show'
  # get '/todos/:id/edit' => 'todos#edit'
  # put '/todos/:id' => 'todos#update'
  # delete '/todos/:id' => 'todos#destroy'
  # get '/contacts' => 'contacts#index'
  # post '/contacts' => 'contacts#create'
  # get '/contacts/new' => 'contacts#new'
  # get '/contacts/:id' => 'contacts#show'
  # get '/contacts/:id/edit' => 'contacts#edit'
  # put '/contacts/:id' => 'contacts#update'
  # delete '/contacts/:id' => 'contacts#destroy'

end
