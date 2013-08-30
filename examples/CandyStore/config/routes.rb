CandyStore::Application.routes.draw do
  root 'candies#index'
  resources :candies
end
