Raffler::Application.routes.draw do
  resources :entries


  root to: "main#index"
end
