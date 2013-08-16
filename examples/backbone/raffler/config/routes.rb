Raffler::Application.routes.draw do
  # localhost:3000/api/entries
  scope "api" do
   resources :entries
  end

  root to: "main#index"
end
